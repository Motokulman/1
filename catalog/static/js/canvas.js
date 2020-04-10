var canvas_0 = document.getElementById('canvas_0'); // канва для рисования схемы
var canvas_1 = document.getElementById('canvas_1'); // канва для линий приклейки
var canvas_2 = document.getElementById('canvas_2'); // канва для размеров
var canvas_3 = document.getElementById('canvas_3'); // канва для подсвечивания выделенного размера
var ctx_0 = canvas_0.getContext('2d');
var ctx_1 = canvas_1.getContext('2d');
var ctx_2 = canvas_2.getContext('2d');
var ctx_3 = canvas_3.getContext('2d');

var selectedLineType = "straight"; // Тип линии при рисовании - прямая или кривая
var polygonSides = "3"; // Количество сторон многоугольника
var selectedTool = "none"; // Выбранный элемент для рисования, стена, или еще что-то. Изначально - ничего не выбрано
var mousePosArray = []; // массив позиций мыши при рисовании. 
var mousePos; // Позиции мыши по х и у, с учетом положения канвы на экране
var mmOfMousePos = []; // Позиция в миллиметрах, соответствующая текущему положению мыши с учетом смещения и масштаба
var points = []; // Массив точек в миллиметрах. Первая точка - точка отсчета, начало коопдинат
var zeroPointPadding = { 'x': 0, 'y': 0 }; // Смещение начала координат схемы относительно начала координат канвы. Попробуем в мм.
var lines = []; // Массив связей между точками. 
var elements = []; // Фигура, содержит массив элементов и закон их взаимодействия
var windows = []; // Содержит окна в стенах
var doorWindows = []; // Выход на балкон: окно(а) с дверью
var openings = []; // Проходные проемы, либо с дверью, либо без
var scale = 25; // Сделать получение из настроек и сохранение в них
var empty_scheme = true;// Правда, если еще нет ни одного элемента в схеме
var sizeTextSettings = { topPadding: 10, bottomPadding: 5, leftPadding: 5, rightPadding: 30 }; // массив с настройками для отображения размеров на  экране
var prePointsMM = []; // массив новых точек при рисовании элемента. Потом добавляется в основной массив точек
var selectedElements = [];// массив выделенных на схеме элементов (id)
var selectedLines = [];// массив выделенных на схеме линий (id)
var schemeChange = false;
var checked = false; // прверен проект или нет
var plate_garage = []; // массив перекрытий гаражного типа, который включает в себя координаты точки в мм внутри поемещения. Сделать проверку, чтоб не было двух таких меток внутри одного помещения и сделать удаление
var drawSettings = [];
var level; // текущий уровень

var levels = new Map([['floor_1', { // настройки уровней
    height: 3000
}], ['floor_2', {
    height: 3000
}], ['floor_3', {
    height: 3000
}]]);


var drawSettingsDefault = {
    strokeStyle: 'black',
    lineWidth: 2,
    fillStyle: "#00ffff",
    globalAlpha: 1,
    blur: false
}

var drawSettingsGarage = {
    strokeStyle: 'black',
    lineWidth: 2,
    fillStyle: "lime",
    globalAlpha: 0.5,
    blur: false
}

var drawSettingsOutdoorSpace = {
    strokeStyle: 'black',
    lineWidth: 2,
    fillStyle: "blue",
    globalAlpha: 0.5,
    blur: false
}

var drawSettingsSteps = {
    strokeStyle: 'black',
    lineWidth: 2,
    fillStyle: "pink",
    globalAlpha: 0.5,
    blur: false
}

var drawSettingsWindow = {
    strokeStyle: 'black',
    lineWidth: 2,
    fillStyle: "#00ccff",
    globalAlpha: 1,
    blur: false
}

var drawSettingsOpening = {
    strokeStyle: 'black',
    lineWidth: 2,
    fillStyleDoor: "#8b4513",
    fillStyleEmpty: "white",
    globalAlpha: 1,
    blur: false
}

var drawSettingsRoof = {
    strokeStyle: 'black',
    lineWidth: 2,
    fillStyle: "#663333",
    globalAlpha: 0.5,
    blur: false
}

var windowDefault = {
    width: 1500,
    height: 1500
}

var openingDefault = {
    width: 1500,
    height: 1500,
    empty: false
}

var doorWindowDefault = {
    firstWindowWidth: 1500, // первое окно считается от первой точки линии p0
    secondWindowWidth: 1500, // второе окно через дверь от первого окна
    windowHeight: 1500, // высота окон обоих одинаковая
    doorHeight: 2000
}

function getLineContext(line, context) {// функуия для получения контекста в зависимоти от формы линии. Если так не сделать, в разных функциях приедтся кодить для кривой
    // console.log('points.find(point => point.id == line.id0) = ', points.find(point => point.id == line.id0));
    // console.log('points.find(point => point.id == line.id1) = ', points.find(point => point.id == line.id1));
    // var point0 = mmToPix(points.find(point => point.id == line.id0));
    // var point1 = mmToPix(points.find(point => point.id == line.id1));
    // if (line.distance > 0) {// если это окружность
    //     var middle = [];
    //     middle.x = Math.min(point0.x, point1.x) + Math.abs(point0.x - point1.x) / 2;
    //     middle.y = Math.min(point0.y, point1.y) + Math.abs(point0.y - point1.y) / 2;
    //     var radius = lengthLine(point0, point1) / 2;
    //     if (point0.y == point1.y) {
    //         if (((line.direction == "left") && (point0.x < point1.x))) {
    //             context.arc(middle.x, middle.y, radius, 0, Math.PI, true);
    //         } else if (((line.direction == "right") && (point0.x < point1.x))) {
    //             context.arc(middle.x, middle.y, radius, 0, Math.PI, false);
    //         } else if (((line.direction == "left") && (point0.x > point1.x))) {
    //             context.arc(middle.x, middle.y, radius, Math.PI, 0, true);
    //         } else if (((line.direction == "right") && (point0.x > point1.x))) {
    //             context.arc(middle.x, middle.y, radius, Math.PI, 0, false);
    //         }
    //     } else if (point0.x == point1.x) {
    //         if (((line.direction == "left") && (point0.y < point1.y))) {
    //             context.arc(middle.x, middle.y, radius, Math.PI / 2, 3 * Math.PI / 2, true);
    //         } else if (((line.direction == "right") && (point0.y < point1.y))) {
    //             context.arc(middle.x, middle.y, radius, Math.PI / 2, 3 * Math.PI / 2, false);
    //         } else if (((line.direction == "right") && (point0.y > point1.y))) {
    //             context.arc(middle.x, middle.y, radius, 3 * Math.PI / 2, Math.PI / 2, false);
    //         } else if (((line.direction == "left") && (point0.y > point1.y))) {
    //             context.arc(middle.x, middle.y, radius, 3 * Math.PI / 2, Math.PI / 2, true);
    //         }
    //     }
    // } else { // если это не окружность, значит это просто прямая
    //     context.moveTo(point0.x, point0.y);
    //     context.lineTo(point1.x, point1.y);
    // }
    // console.log("point0.x = ", point0.x);
    // console.log("point0.y = ", point0.y);
    // console.log("point1.x = ", point1.x);
    // console.log("point1.y = ", point1.y);
    // return context;
}


// рисуем точку
function drawPoint(p) {
    ctx_0.beginPath();
    ctx_0.arc(p.x, p.y, 5, 0, 2 * Math.PI);
    ctx_0.fillStyle = 'black';
    ctx_0.fill();
    ctx_0.closePath();
}

function drawShape(element, context, drawSettings) {
    //   console.log("drawSettings = ", drawSettings);
    // var ctx = context;
    var line = [];
    context.strokeStyle = drawSettings.strokeStyle;
    context.lineWidth = drawSettings.lineWidth;
    context.fillStyle = drawSettings.fillStyle;
    context.globalAlpha = drawSettings.globalAlpha;
    // console.log("drawSettings.blur = ", drawSettings.blur);
    if (selectedElements.find(sel => sel == element.id) >= 0) { // если данный элемент в массиве выделенных
        context.shadowBlur = 30;
        context.shadowColor = "black";
    } else {
        context.shadowBlur = 0;
    }
    context.beginPath();
    // найдем первую точку
    line = lines.find(line => line.id == element.ids[0]);
    context.moveTo(mmToPix(points.find(point => point.id == line.id0)).x, mmToPix(points.find(point => point.id == line.id0)).y);
    // console.log("delement.ids.values() = ", element.ids.values());
    for (line_id of element.ids.values()) {
        // console.log("line_id= ", line_id);
        line = lines.find(line => line.id == line_id);
        var point0 = mmToPix(points.find(point => point.id == line.id0));
        var point1 = mmToPix(points.find(point => point.id == line.id1));
        if (line.distance > 0) {// если это окружность
            // console.log("окружность ");
            var middle = [];
            middle.x = Math.min(point0.x, point1.x) + Math.abs(point0.x - point1.x) / 2;
            middle.y = Math.min(point0.y, point1.y) + Math.abs(point0.y - point1.y) / 2;
            var radius = lengthLine(point0, point1) / 2;
            if (point0.y == point1.y) {
                if (((line.direction == "left") && (point0.x < point1.x))) {
                    context.arc(middle.x, middle.y, radius, 0, Math.PI, true);
                } else if (((line.direction == "right") && (point0.x < point1.x))) {
                    context.arc(middle.x, middle.y, radius, 0, Math.PI, false);
                } else if (((line.direction == "left") && (point0.x > point1.x))) {
                    context.arc(middle.x, middle.y, radius, Math.PI, 0, true);
                } else if (((line.direction == "right") && (point0.x > point1.x))) {
                    context.arc(middle.x, middle.y, radius, Math.PI, 0, false);
                }
            } else if (point0.x == point1.x) {
                if (((line.direction == "left") && (point0.y < point1.y))) {
                    context.arc(middle.x, middle.y, radius, Math.PI / 2, 3 * Math.PI / 2, true);
                } else if (((line.direction == "right") && (point0.y < point1.y))) {
                    context.arc(middle.x, middle.y, radius, Math.PI / 2, 3 * Math.PI / 2, false);
                } else if (((line.direction == "right") && (point0.y > point1.y))) {
                    context.arc(middle.x, middle.y, radius, 3 * Math.PI / 2, Math.PI / 2, false);
                } else if (((line.direction == "left") && (point0.y > point1.y))) {
                    context.arc(middle.x, middle.y, radius, 3 * Math.PI / 2, Math.PI / 2, true);
                }
            }
        } else { // если это не окружность, значит это просто прямая
            // context.moveTo(point0.x, point0.y);
            context.lineTo(point1.x, point1.y);
            // console.log("element= ", element);
            // console.log("lineTo= ", point1);
        }
    }


    // console.log("context.fillStyle= ", context.fillStyle);
    // S.closePath();
    // context.fillStyle = "red";
    // context.strokeStyle = "blue";
    // context.closePath();
    context.fill();
    context.stroke();
    for (line_id of element.ids.values()) {
        line = lines.find(line => line.id == line_id);
        drawLine(line, context, drawSettings);
    }
}

// рисуем линию, в зависимости от содержимого прямую или кривую
function drawLine(line, context, drawSettings) {

    console.log("line = ", line);
    // context.strokeStyle = drawSettingsDefault.strokeStyle;
    // context.lineWidth = drawSettingsDefault.lineWidth;

    context.lineWidth = drawSettings.lineWidth;
    console.log("selectedLines = ", selectedLines);
    console.log("selectedLines.findIndex(sel => sel == line.id) = ", selectedLines.findIndex(sel => sel == line.id));
    if (selectedLines.findIndex(sel => sel == line.id) >= 0) { // если данный элемент в массиве выделенных typeof line != "undefined")
        context.strokeStyle = 'lime';
    } else {
        context.strokeStyle = drawSettings.strokeStyle;
    }
    console.log("context.strokeStyle = ", context.strokeStyle);
    context.beginPath();
    // найдем первую точку
    // line = lines.find(line => line.id == element.ids[0]);
    // context.moveTo(mmToPix(points.find(point => point.id == line.id0)).x, mmToPix(points.find(point => point.id == line.id0)).y);
    var point0 = mmToPix(points.find(point => point.id == line.id0));
    var point1 = mmToPix(points.find(point => point.id == line.id1));
    if (line.distance > 0) {// если это окружность
        var middle = [];
        middle.x = Math.min(point0.x, point1.x) + Math.abs(point0.x - point1.x) / 2;
        middle.y = Math.min(point0.y, point1.y) + Math.abs(point0.y - point1.y) / 2;
        var radius = lengthLine(point0, point1) / 2;
        if (point0.y == point1.y) {
            if (((line.direction == "left") && (point0.x < point1.x))) {
                context.arc(middle.x, middle.y, radius, 0, Math.PI, true);
            } else if (((line.direction == "right") && (point0.x < point1.x))) {
                context.arc(middle.x, middle.y, radius, 0, Math.PI, false);
            } else if (((line.direction == "left") && (point0.x > point1.x))) {
                context.arc(middle.x, middle.y, radius, Math.PI, 0, true);
            } else if (((line.direction == "right") && (point0.x > point1.x))) {
                context.arc(middle.x, middle.y, radius, Math.PI, 0, false);
            }
        } else if (point0.x == point1.x) {
            if (((line.direction == "left") && (point0.y < point1.y))) {
                context.arc(middle.x + 0.5, middle.y + 0.5, radius, Math.PI / 2, 3 * Math.PI / 2, true);
            } else if (((line.direction == "right") && (point0.y < point1.y))) {
                context.arc(middle.x + 0.5, middle.y + 0.5, radius, Math.PI / 2, 3 * Math.PI / 2, false);
            } else if (((line.direction == "right") && (point0.y > point1.y))) {
                context.arc(middle.x + 0.5, middle.y + 0.5, radius, 3 * Math.PI / 2, Math.PI / 2, false);
            } else if (((line.direction == "left") && (point0.y > point1.y))) {
                context.arc(middle.x + 0.5, middle.y + 0.5, radius, 3 * Math.PI / 2, Math.PI / 2, true);
            }
        }
    } else if (lengthLine(point0, point1) == 0) { // если это не окружность, значит это просто прямая. Если ее длина == 0, то это колонна
        context.strokeRect(point0.x - 3, point0.y - 3, 6, 6);
    } else { // иначе это просто прямая
        context.moveTo(point0.x, point0.y);
        context.lineTo(point1.x, point1.y);
    }
    // console.log("context = ", context);
    context.stroke();

    // отрисуем окна на этой линии
    for (item of windows.values()) {
        // console.log("item = ", item);
        if (item.line_id == line.id) {
            var x, y;
            var L = lengthLine(point0, point1);
            var rate = item.distance / scale;
            rate = rate / L;
            x = Math.abs((point0.x - point1.x)) * rate;
            y = Math.abs((point0.y - point1.y)) * rate;
            if (point0.x <= point1.x) {
                x = x + point0.x;
            } else {
                x = point0.x - x;
            }
            if (point0.y <= point1.y) {
                y = y + point0.y;
            } else {
                y = point0.y - y;
            }
            drawWindow(x, y, ctx_0, drawSettingsWindow);
        }
    }
    // отрисуем doow windows на этой линии
    for (item of doorWindows.values()) {
        // console.log("item = ", item);
        if (item.line_id == line.id) {
            var x, y;
            var L = lengthLine(point0, point1);
            var rate = item.distance / scale;
            rate = rate / L;
            x = Math.abs((point0.x - point1.x)) * rate;
            y = Math.abs((point0.y - point1.y)) * rate;
            if (point0.x <= point1.x) {
                x = x + point0.x;
            } else {
                x = point0.x - x;
            }
            if (point0.y <= point1.y) {
                y = y + point0.y;
            } else {
                y = point0.y - y;
            }
            drawDoorWindow(x, y, ctx_0, drawSettingsWindow);
        }
    }

    // отрисуем openings на этой линии
    for (item of openings.values()) {
        // console.log("item = ", item);
        if (item.line_id == line.id) {
            var x, y;
            var L = lengthLine(point0, point1);
            var rate = item.distance / scale;
            rate = rate / L;
            x = Math.abs((point0.x - point1.x)) * rate;
            y = Math.abs((point0.y - point1.y)) * rate;
            if (point0.x <= point1.x) {
                x = x + point0.x;
            } else {
                x = point0.x - x;
            }
            if (point0.y <= point1.y) {
                y = y + point0.y;
            } else {
                y = point0.y - y;
            }
            drawOpening(x, y, ctx_0, drawSettingsOpening);
        }
    }
}


function drawWindow(x, y, context, drawSettings) {
    // console.log("drawShape element = ", element);
    context.strokeStyle = drawSettings.strokeStyle;
    context.lineWidth = drawSettings.lineWidth;
    context.fillStyle = drawSettings.fillStyle;
    context.globalAlpha = drawSettings.globalAlpha;
    if (drawSettings.blur == true) {
        context.shadowBlur = 5;
        context.shadowColor = "blue";
    }

    context.beginPath();
    context.moveTo(x - 10, y - 10);
    context.lineTo(x + 10, y - 10);
    context.lineTo(x + 10, y + 10);
    context.lineTo(x - 10, y + 10);
    context.closePath();
    context.stroke();
    context.fill();
}

function drawOpening(x, y, context, drawSettings) {
    context.strokeStyle = drawSettings.strokeStyle;
    context.lineWidth = drawSettings.lineWidth;
    context.globalAlpha = drawSettings.globalAlpha;
    if (drawSettings.empty == true) {
        context.fillStyle = drawSettings.fillStyleEmpty;
    } else {
        context.fillStyle = drawSettings.fillStyleDoor;
    }
    if (drawSettings.blur == true) {
        context.shadowBlur = 5;
        context.shadowColor = "blue";
    }

    context.beginPath();
    context.moveTo(x - 5, y - 10);
    context.lineTo(x + 5, y - 10);
    context.lineTo(x + 5, y + 10);
    context.lineTo(x - 5, y + 10);
    context.closePath();
    context.stroke();
    context.fill();
}

function drawDoorWindow(x, y, context, drawSettings) {
    // console.log("drawShape element = ", element);
    context.strokeStyle = drawSettings.strokeStyle;
    context.lineWidth = drawSettings.lineWidth;
    context.fillStyle = drawSettings.fillStyle;
    context.globalAlpha = drawSettings.globalAlpha;
    if (drawSettings.blur == true) {
        context.shadowBlur = 5;
        context.shadowColor = "blue";
    }
    context.beginPath();
    context.moveTo(x - 16, y - 10);
    context.lineTo(x - 5, y - 10);
    context.lineTo(x - 5, y + 2);
    context.lineTo(x - 16, y + 2);
    context.closePath();
    context.stroke();
    context.fill();

    context.beginPath();
    context.moveTo(x - 5, y - 10);
    context.lineTo(x + 5, y - 10);
    context.lineTo(x + 5, y + 10);
    context.lineTo(x - 5, y + 10);
    context.closePath();
    context.stroke();
    context.fill();

    context.beginPath();
    context.moveTo(x + 6, y - 10);
    context.lineTo(x + 16, y - 10);
    context.lineTo(x + 16, y + 2);
    context.lineTo(x + 6, y + 2);
    context.closePath();
    context.stroke();
    context.fill();

}


// функция рисования окружности 
// function drawCircleElement(element, context, color, blur) {
//     context.beginPath();
//     // поскольку мы пока упростили и при создании окружности она становится правильным полукругом, то центр окружности тупо середина базовой линии
//     var line = lines.find(line => line.id == element.ids[0]); // ищем в массиве линий линию, сооьветствующиему Id в данной итерации
//     var point0 = mmToPix(points.find(point => point.id == line.id0)); // ищем и заносим в первую точку для рисования линии id первой точки сразу переводя в пиксели
//     var point1 = mmToPix(points.find(point => point.id == line.id1)); // ищем и заносим в первую точку для рисования линии id первой точки сразу переводя в пиксели
//     drawPoint(point0);
//     drawPoint(point1);
//     var middle = [];
//     middle.x = Math.min(point0.x, point1.x) + Math.abs(point0.x - point1.x) / 2;
//     middle.y = Math.min(point0.y, point1.y) + Math.abs(point0.y - point1.y) / 2;
//     var radius = lengthLine(point0, point1) / 2;
//     if (point0.y == point1.y) {
//         if (((element.direction == "left") && (point0.x < point1.x))) {
//             context.arc(middle.x, middle.y, radius, 0, Math.PI, true);
//         } else if (((element.direction == "right") && (point0.x < point1.x))) {
//             context.arc(middle.x, middle.y, radius, 0, Math.PI, false);
//         } else if (((element.direction == "left") && (point0.x > point1.x))) {
//             context.arc(middle.x, middle.y, radius, Math.PI, 0, true);
//         } else if (((element.direction == "right") && (point0.x > point1.x))) {
//             context.arc(middle.x, middle.y, radius, Math.PI, 0, false);
//         }
//     } else if (point0.x == point1.x) {
//         if (((element.direction == "left") && (point0.y < point1.y))) {
//             context.arc(middle.x, middle.y, radius, Math.PI / 2, 3 * Math.PI / 2, true);
//         } else if (((element.direction == "right") && (point0.y < point1.y))) {
//             context.arc(middle.x, middle.y, radius, Math.PI / 2, 3 * Math.PI / 2, false);
//         } else if (((element.direction == "right") && (point0.y > point1.y))) {
//             context.arc(middle.x, middle.y, radius, 3 * Math.PI / 2, Math.PI / 2, false);
//         } else if (((element.direction == "left") && (point0.y > point1.y))) {
//             context.arc(middle.x, middle.y, radius, 3 * Math.PI / 2, Math.PI / 2, true);
//         }
//     }
//     context.strokeStyle = color;
//     if (blur == true) {
//         context.shadowBlur = 5;
//         context.shadowColor = "blue";
//     }
//     context.stroke();
// }

// let hello = "привет мир. пока мир";
// let key = "мир";
// let firstPos = hello.indexOf(key);
function drawElement(element) {
    // console.log('drawElement element! = ', element);
    drawSettings = drawSettingsDefault;
    if (element.type == 'wall') { // если это стена
        if (selectedElements.findIndex(sel => sel == element.id)) { // если данный элемент в массиве выделенных
            drawSettings.blur = true;
        } else {
            drawSettings.blur = false;
        }
        if (element.subType.indexOf("partition") >= 0) {// если это перегородка
            if (element.level == level) {
                drawSettings = {
                    lineWidth: 6,
                    strokeStyle: "black"
                }
            } else { //if (level != "floor_1")
                drawSettings = {
                    lineWidth: 6,
                    strokeStyle: "gray"
                }
            }

            for (line_id of element.ids.values()) {// перебираем массив id линий, хранящийся в каждом элементе
                var line = lines.find(line => line.id == line_id);
                drawLine(line, ctx_0, drawSettings);
            }
        } else if (element.subType.indexOf("bearing") >= 0) {// если это несущая стена 
            if (element.level == level) {
                drawSettings = {
                    lineWidth: 12,
                    strokeStyle: "black"
                }
            } else { // if (level != "floor_1")
                drawSettings = {
                    lineWidth: 12,
                    strokeStyle: "gray"
                }
            }

            for (line_id of element.ids.values()) {// перебираем массив id линий, хранящийся в каждом элементе
                var line = lines.find(line => line.id == line_id);
                drawLine(line, ctx_0, drawSettings);
            }
            if (element.level == level) {
                if (element.subType.indexOf("outdoor") >= 0) {
                    drawSettings = {
                        lineWidth: 10,
                        strokeStyle: "yellow"
                    }
                } else if (element.subType.indexOf("indoor") >= 0) {
                    drawSettings = {
                        lineWidth: 10,
                        strokeStyle: "blue"
                    }
                }
                for (line_id of element.ids.values()) {// перебираем массив id линий, хранящийся в каждом элементе
                    var line = lines.find(line => line.id == line_id);
                    drawLine(line, ctx_0, drawSettings);
                }
            }

        } else {
            drawSettings = drawSettingsDefault; // задаем умолчания, если тип стены еще не задан
            for (line_id of element.ids.values()) {// перебираем массив id линий, хранящийся в каждом элементе
                var line = lines.find(line => line.id == line_id);
                drawLine(line, ctx_0, drawSettings);
            }
        }
        if (element.level == level) {
            if (element.subType.indexOf("living") >= 0) {// если это смженая сжилым
                drawSettings = {
                    lineWidth: 4,
                    strokeStyle: "green"
                }
                for (line_id of element.ids.values()) {// перебираем массив id линий, хранящийся в каждом элементе
                    var line = lines.find(line => line.id == line_id);
                    drawLine(line, ctx_0, drawSettings);
                }
            } else if (element.subType.indexOf("uninhabited") >= 0) {// если это смженая с нежилым
                drawSettings = {
                    lineWidth: 4,
                    strokeStyle: "gray"
                }
                for (line_id of element.ids.values()) {// перебираем массив id линий, хранящийся в каждом элементе
                    var line = lines.find(line => line.id == line_id);
                    drawLine(line, ctx_0, drawSettings); // нарисовали линию стены
                }
            }
        }



    } else if (element.type == 'aperture') { // если это лестничный пролет drawSettingsGarage
        drawShape(element, ctx_0, drawSettingsDefault);
    } else if ((element.type == 'floor') && (element.subType == 'garage')) { // если это пол гаража 
        drawShape(element, ctx_0, drawSettingsGarage);
    } else if (element.type == 'roof') { // если это пол кровля
        drawShape(element, ctx_0, drawSettingsRoof);
        // console.log("drawSettingsGarage == ", drawSettingsGarage)
    } else if ((element.type == 'roof') && (element.level == level)) {
        if ((element.highSide != '') && (element.angle != 0) && (element.height != 0)) { // если еще не заданы настройки крыши, даем эо понять цветом
            drawSettings = {
                fillStyle: 'red',
                globalAlpha: 0.5
            }
        } else {
            drawSettings = {
                fillStyle: 'gray',
                globalAlpha: 0.5
            }
        }
        drawShape(element, ctx_0, drawSettings);
    } else if ((element.type == 'outdoor_space') && (element.level == level)) {
        drawShape(element, ctx_0, drawSettingsOutdoorSpace);
    } else if ((element.type == 'steps') && (element.level == level)) {
        drawShape(element, ctx_0, drawSettingsSteps);
    }
}



// Воспроизведение из массива стен
function drawElements() {  //drawWalls
    clear(ctx_0, canvas_0);
    if (elements.length > 0) {
        for (element of elements.values()) {// перебираем все элементы 
            if (((element.type == "wall") && (level == "floor_1") && (element.level == "floor_1")) || ((element.type == "wall") && (level == "floor_2")) || ((element.type == "wall") && (level == "floor_3")) || (element.type != "wall")) {
                drawElement(element);
            }
        }
    }

}



// попробуем создать модальное окно для стен https://professorweb.ru/my/javascript/jquery/level4/4_9.php
$(function () {
    $('#wall_dialog').dialog({
        buttons: [{ text: "OK", click: applyWallData }, { text: "Отмена", click: function () { $(this).dialog("close") } }],
        modal: true,
        autoOpen: false,
        width: 340
    })
});

// создаем модальное окно для кровли
$(function () {
    $('#roof_dialog').dialog({
        buttons: [{ text: "OK", click: applyRoofData }, { text: "Отмена", click: function () { $(this).dialog("close") } }],
        modal: true,
        autoOpen: false,
        width: 340
    })
});


// обработка правого клика
$("#stage").bind('contextmenu', function (e) {
    // $('#wall_dialog').dialog("open");
    if (selectedElements.length > 0) {
        var num = 0;
        var type = '';
        // проверяем, выбранные элементы одного ли типа, и если да, определяем этот тип и вызываем соответствующее диалоговое окно
        for (sel of selectedElements.values()) {
            for (el of elements.values()) {
                if (el.id == sel) {
                    if (type == '') {
                        type = el.type;
                        num++;
                    } else {
                        if (el.type == type) {
                            num++;
                        }
                    }
                }
            }
        }
        if (selectedElements.length == num) {
            // console.log('type  = ', type);
            switch (type) {
                case 'wall':
                    // console.log("num = ", num);
                    $('#wall_dialog').dialog("open");
                    break;
                case 'roof':
                    $('#roof_dialog').dialog("open");
                    break;
            }
        }

    }
    return false;// запрет стандартного окна при правом клике, нам ведь нужно наше окно
});

// добавление данных о стенах
function applyWallData() {
    var bearType = $('input[name=wall_type]:checked').val();
    var liveType = $('input[name=living]:checked').val();
    var outdoorType = $('input[name=outdoor]:checked').val();
    for (sel of selectedElements.values()) {
        for (el of elements.values()) {
            if (el.id == sel) {
                // //console.log("sel = ", sel);
                var a = bearType + "_" + liveType;
                if (bearType == "bearing") {
                    a = a + "_" + outdoorType;
                }
                el.subType = a;
            }
        }
    }
    $('#wall_dialog').dialog("close");
    selectedElements = [];
    schemeChange = true;
    drawElements();
    // console.log("elements = ", elements);
}
// добавление данных о кровле
function applyRoofData() {
    var highSide = $('input[name=high_side]:checked').val();
    var roofSlope = $('input[name=roof_slope]:checked').val();
    var angle = $('input[name=angle]').val();
    var mauerlatHeight = $('input[name=mauerlat_height]').val();
    var ridgeHeight = $('input[name=ridge_height]').val();
    for (sel of selectedElements.values()) {
        for (el of elements.values()) {
            if (el.id == sel) {
                el.highSide = highSide;
                el.roofSlope = roofSlope;
                el.angle = angle;
                el.mauerlatHeight = mauerlatHeight;
                el.ridgeHeight = ridgeHeight;
            }
        }
    }
    $('#roof_dialog').dialog("close");
    selectedElements = [];
    schemeChange = true;
    drawElements();
    // console.log("elements = ", elements);
}