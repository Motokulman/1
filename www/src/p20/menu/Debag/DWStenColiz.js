
import { VisiPixi } from '../../../libMy/VisiPixi.js';
import { SpDebugPixi } from '../../spSten/SpDebugPixi.js';//пикси отрисовка
export class DWStenColiz extends DCont{
    constructor(dC) {
        super()
        var self=this;
        this.type="DWStenColiz"

        this.dC=dC
        this._active = false 
        this._otstup = 5
        this._width=600
        this._height=600

        var scale=0.1;
        var otstup=50; 

        this.dCont=new DCont(this.dC)

        this.pan = new DPanel (this.dCont,otstup,otstup)
        this.pan.width = this._width;
        this.pan.height = this._height;
        this.pan.visible = this.active;


        this.window=undefined
        this.init=function(){
            if(this.window!=undefined)return

            this.window=new DWindow(this.dCont) 
            this.window.width=222
            this.slider = new DSliderBig (this.window.content, 2, 2, function(){kr.pS.x=this.value;kr.korektGrid()}, 'x', -1000, 1000);
            this.slider1 = new DSliderBig (this.window.content, 2, 2+52*1, function(){kr.pS.y=this.value;kr.korektGrid()}, 'y', -1000, 1000);
            this.slider2 = new DSliderBig (this.window.content, 2, 2+52*2, function(){kr.pS.w=this.value;kr.korektGrid()}, 'w', 100, 1000);  
            this.slider3 = new DSliderBig (this.window.content, 2, 2+52*3, function(){kr.pS.h=this.value;kr.korektGrid()}, 'h', 100, 1000);

            this.slider.width=this.slider1.width=this.slider2.width=this.slider3.width=this.window.width-4
            this.slider.value=kr.pS.x;
            this.slider1.value=kr.pS.y;
            this.slider2.value=kr.pS.w;
            this.slider3.value=kr.pS.h;
            this.window.height=2+52*4; 

        }



        /*this.slider = new DSliderBig (this.pan, this._otstup, this._otstup, function(){self.width=this.value;}, 'width', 200, 800)
        this.slider.value = this._width
        this.slider1 = new DSliderBig (this.pan, this._otstup, this.slider.height + this._otstup * 2, function(){self.height=this.value;}, 'height', 150, 800)
        this.slider1.value = this._height*/

        var kr
        this.kr
        this.setKR=function(_kr){
            this.kr=_kr;
            kr=_kr
            this.init()
        }

        this.visiPixi=undefined//new VisiPixi();   
        this.content2d = new PIXI.Container();
        this.content2d.position.x=otstup;
        this.content2d.position.y=otstup;

        this.debugPixi = new SpDebugPixi();
        this.content2d.addChild(this.debugPixi.content2d);
        this.debugPixi.content2d.scale.set(scale,scale); 
        var dp=this.debugPixi

        this.drag=function(){           
            
            if(self.visiPixi==undefined){
                self.visiPixi=new VisiPixi(); 
                self.visiPixi.content2d.addChild(self.content2d);
                self.dCont.div.appendChild(self.visiPixi.div)
            }

            self.pan.width=Math.round(self.kr.rect.w*scale)
            self.pan.height=Math.round(self.kr.rect.h*scale)

            self.width=self.pan.width+otstup*2
            self.height=self.pan.height+otstup*2

            if(self.window!=undefined){
                self.window.x=300;
                self.window.y=self.pan.height+otstup*2;
            }

            dp.clear()
            dp.dRect(self.kr.rect);

            for (var i = 0; i < kr.sah; i++) {
                self.dragBR(kr.array[i])
            }

            self.visiPixi.render();
        }

        var p={x:0,y:0}
        this.dragBR=function(br){ 
           
            dp.dRect(br);
            p.x=br.x+br.w/2
            p.y=br.y+br.h/2
            dp.dText(p,br.idArr);
           
            //грании
            if(br.bool[0]==true)dp.dLineParam(br.x,br.y,br.x+br.w,br.y,0xff0000,20);           
            if(br.bool[1]==true)dp.dLineParam(br.x+br.w,br.y,br.x+br.w,br.y+br.h,0xff0000,25);
            if(br.bool[2]==true)dp.dLineParam(br.x+br.w,br.y+br.h,br.x,br.y+br.h,0xff0000,30);
            if(br.bool[3] == true)dp.dLineParam(br.x, br.y, br.x, br.y+br.h,0xff0000,35);   
                
            


        }



        this.funDrwgWG=null
        this.funxz=function(){
            if(this.funDrwgWG!=undefined)this.funDrwgWG(this._width,this._height)
        }

    }

    set active(value) {
        if(this._active!=value){
            this._active = value;
            this.pan.visible = this.active
            if(this.kr){
                if(value==true){
                    this.kr.funRender=this.drag;
                }else{
                    this.kr.funRender=undefined;
                }
            }
        }       
    }   
    get active() { return  this._active;} 

    set width(value) { 
        if(this._width!=value){
            this._width=value;
            //this.pan.width=value
            //this.slider.value = value;
            this.visiPixi.sizeWindow(this._width,this._height)
           this.funxz();
        }
    }   
    get width() { return  this._width}

    set height(value) { 
        if(this._height!=value){
            this._height=value;
            //this.pan.height=value
            //this.slider1.value = value;
            this.visiPixi.sizeWindow(this._width,this._height)
            this.funxz();
        }
    }   
    get height() { return  this._height}
}