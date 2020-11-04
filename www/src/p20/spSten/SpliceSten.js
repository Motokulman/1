
/*

import { Windows } from './Windows.js';
import { Sten3D } from './Sten3D.js';
*/
import { Splice } from './../sp/Splice.js';
import { SPLWindow } from './SPLWindow.js';

/**
* Стена(линия)
* @class
* @extends Splice
*/
export function SpliceSten (_stage) {
	Splice.call(this,_stage);
	var self = this;
	this.type = 'SpliceSten';
	this.tipe = 'SpliceSten';
	this.stage = _stage;
	this.par = _stage;
	this._boolText = true;
	this._active = false;
	this.idUi=Math.round(Math.random()*1000);
	this.sUi = -1;
	this._offset=0;
	this._bChaz=false;
	this._delph = _stage._delph;// толщина линии

	this._uuid=calc.generateRendom(2);
	this._mashtabText=8;

	this._carrier = _stage.carrier;// несущия
	this._out = _stage.out;// несущия
	this._adjacent = _stage.adjacent;// несущия

	if(this._carrier)

	if(this._carrier==true)this._delph =_stage._delphC1;
	else this._delph =_stage._delphC0;
    
    this.alpha =_stage._alpha;    
    this.colorP = _stage._colorP;
    this.colorP1 = _stage._colorP1;

  

	

	this._height = this.stage._height;

	this.cont2dDeb = new PIXI.Container();
	_stage.content2d2.addChild(this.cont2dDeb);
	this.graphDeb = new PIXI.Graphics();
	this.cont2dDeb.addChild(this.graphDeb);

	
	this.content2d = new PIXI.Container();
	_stage.content2d2.addChild(this.content2d);
	
	this.graphics = new PIXI.Graphics();
    this.content2d.addChild(this.graphics);
    this.graphics.interactive = true;


    this.stAct=new STAct(this)



    this.content2d1 = new PIXI.Container();
	_stage.content2d1.addChild(this.content2d1);
	
	this.graphics1 = new PIXI.Graphics();
    this.content2d1.addChild(this.graphics1);


    this.windows=new SPLWindow(this);

    this.arrayClass.push(this.windows);



    this.addBlok = function(blok){    	
    	if(blok==undefined)return -1;
    	return this.windows.addBlok(blok);   	
    }

    this.removeBlok = function(blok){
    	if(blok==undefined)return -1;
    	return this.windows.removeBlok(blok);   	
    }




    var sahh=0
    this.aVKol
    this.arrVorur = [new Position(), new Position(), new Position(), new Position(), new Position(), new Position(), new Position(), new Position()];

    this.onDragStart=function(e){
    	if(_stage.par.sobSP!=undefined)_stage.par.sobSP("downSten",self,e)
    }

    this.graphics.interactive = true;            
    this.graphics.on('mousedown', this.onDragStart);


    this.graphics.on('mouseover', function(e){    	
    	self.stAct.sahPlus=10;    	
    });
    this.graphics.on('mouseout', function(e){    	
    	self.stAct.sahPlus=0;    
    });

    this.c2dt= new PIXI.Container();
    this.text = new PIXI.Text('345634634',{ fontFamily : 'Arial' })//,{ font: 'bold 200px Arial', fontFamily : 'Arial', fontSize: 24, fill : 0xff1010 }); 
    this.c2dt.addChild(this.text);
    this.text.scale.x=this.text.scale.y=this._mashtabText;
    this.content2d.addChild(this.c2dt)
    this.c2dt.visible=false

    this.c2dt1= new PIXI.Container();
    this.text1 = new PIXI.Text('345634634',{ fontFamily : 'Arial' })//,{ font: 'bold 200px Arial', fontFamily : 'Arial', fontSize: 24, fill : 0xff1010 }); 
    this.c2dt1.addChild(this.text1);
    this.text1.scale.x=this.text1.scale.y=this._mashtabText;
    this.content2d.addChild(this.c2dt1)
    this.c2dt1.visible=false


    this.numBlok=0
    var numBlok
	this.draw1 = function (b) {
		if(b==undefined)this.windows.draw()
		sahh=0;
		this.plusVor(-this.arrPosit[2].x,this.arrPosit[2].y)
		this.plusVor(-this.arrPosit[1].x,this.arrPosit[1].y)
		this.plusVor(-this.arrPosit[0].x,this.arrPosit[0].y)

		this.plusVor(this.arrPosit1[5].x+this._distans,this.arrPosit1[5].y)
		this.plusVor(this.arrPosit1[4].x+this._distans,this.arrPosit1[4].y)
		this.plusVor(this.arrPosit1[3].x+this._distans,this.arrPosit1[3].y)

		this.plusVor(this.arrPosit1[2].x+this._distans,this.arrPosit1[2].y)		
		this.plusVor(this.arrPosit1[1].x+this._distans,this.arrPosit1[1].y)
		this.plusVor(this.arrPosit1[0].x+this._distans,this.arrPosit1[0].y)

		this.plusVor(-this.arrPosit[5].x,this.arrPosit[5].y)
		this.plusVor(-this.arrPosit[4].x,this.arrPosit[4].y)
		this.plusVor(-this.arrPosit[3].x,this.arrPosit[3].y)

		//this.colorP=Math.random()*0xffffff

		numBlok=this.windows.getNumBlok();
	
		this.graphics.clear();
		this.graphics.beginFill(this._adjacent == false ? this.par._colorC0_ : this.par._colorC1_, this.alpha);



		if(numBlok.length==0){

			this.graphics.moveTo(this.arrVorur[0].x,this.arrVorur[0].y);
			for (var i = 0; i < this.aVKol; i++) {
				this.graphics.lineTo(this.arrVorur[i].x,this.arrVorur[i].y);
			}
			this.graphics.lineTo(this.arrVorur[0].x,this.arrVorur[0].y);


		}else{
			this.graphics.moveTo(-this.arrPosit[2].x,this.arrPosit[2].y);
			this.graphics.lineTo(-this.arrPosit[1].x,this.arrPosit[1].y);
			this.graphics.lineTo(-this.arrPosit[0].x,this.arrPosit[0].y);
			

			this.graphics.lineTo(numBlok[0],this.arrPosit[0].y);
			this.graphics.lineTo(numBlok[0],this.arrPosit[5].y);

			this.graphics.lineTo(-this.arrPosit[5].x,this.arrPosit[5].y);
			this.graphics.lineTo(-this.arrPosit[4].x,this.arrPosit[4].y);
			this.graphics.lineTo(-this.arrPosit[3].x,this.arrPosit[3].y);

			for (var i = 0; i < numBlok.length; i+=2) {
				if(i!=numBlok.length-2){
					this.graphics.moveTo(numBlok[i+1],this.arrPosit[0].y);
					this.graphics.lineTo(numBlok[i+1],this.arrPosit[5].y);

					this.graphics.lineTo(numBlok[i+2],this.arrPosit[5].y);
					this.graphics.lineTo(numBlok[i+2],this.arrPosit[0].y);

					this.graphics.lineTo(numBlok[i+1],this.arrPosit[0].y);

				}else{
					this.graphics.moveTo(this.arrPosit1[5].x+this._distans,this.arrPosit1[5].y);
					this.graphics.lineTo(this.arrPosit1[4].x+this._distans,this.arrPosit1[4].y);
					this.graphics.lineTo(this.arrPosit1[3].x+this._distans,this.arrPosit1[3].y);

					this.graphics.lineTo(this.arrPosit1[2].x+this._distans,this.arrPosit1[2].y);
					this.graphics.lineTo(this.arrPosit1[1].x+this._distans,this.arrPosit1[1].y);
					this.graphics.lineTo(this.arrPosit1[0].x+this._distans,this.arrPosit1[0].y);

					this.graphics.lineTo(numBlok[i+1],this.arrPosit1[0].y);
					this.graphics.lineTo(numBlok[i+1],this.arrPosit1[5].y);					
				}
			}			
		}



		this.graphics.beginFill(0x0000ff, 0.1);
		this.graphics.drawCircle(200,0,50)

		this.graphics1.clear();	
		this.graphics1.lineStyle(20, 0x000000, 1);
	
		if(numBlok==0){
			for (var i = 0; i < this.aVKol; i++) {			
				this.graphics1.moveTo(this.arrVorur[i].x,this.arrVorur[i].y);
				if(i!=this.aVKol-1)this.graphics1.lineTo(this.arrVorur[i+1].x,this.arrVorur[i+1].y);
				else this.graphics1.lineTo(this.arrVorur[0].x,this.arrVorur[0].y);
			}
		}else{

			this.drawGrah(this.graphics1,-this.arrPosit[2].x,this.arrPosit[2].y,true)
			this.drawGrah(this.graphics1,-this.arrPosit[1].x,this.arrPosit[1].y,false)
			this.drawGrah(this.graphics1,-this.arrPosit[0].x,this.arrPosit[0].y,false)

			this.drawGrah(this.graphics1,numBlok[0],this.arrPosit[0].y,false)
			this.drawGrah(this.graphics1,numBlok[0],this.arrPosit[5].y,false)

			this.drawGrah(this.graphics1,-this.arrPosit[5].x,this.arrPosit[5].y,false)
			this.drawGrah(this.graphics1,-this.arrPosit[4].x,this.arrPosit[4].y,false)
			this.drawGrah(this.graphics1,-this.arrPosit[3].x,this.arrPosit[3].y,false)
			this.drawGrah(this.graphics1,-this.arrPosit[2].x,this.arrPosit[2].y,false)


			for (var i = 0; i < numBlok.length; i+=2) {
				if(i!=numBlok.length-2){

					this.drawGrah(this.graphics1,numBlok[i+1],this.arrPosit[0].y,true)
					this.drawGrah(this.graphics1,numBlok[i+1],this.arrPosit[5].y,false)
					this.drawGrah(this.graphics1,numBlok[i+2],this.arrPosit[5].y,false)
					this.drawGrah(this.graphics1,numBlok[i+2],this.arrPosit[0].y,false)
					this.drawGrah(this.graphics1,numBlok[i+1],this.arrPosit[0].y,false)
		


				}else{



					this.drawGrah(this.graphics1,this.arrPosit1[5].x+this._distans,this.arrPosit1[5].y,true);
					this.drawGrah(this.graphics1,this.arrPosit1[4].x+this._distans,this.arrPosit1[4].y,false);
					this.drawGrah(this.graphics1,this.arrPosit1[3].x+this._distans,this.arrPosit1[3].y,false);

					this.drawGrah(this.graphics1,this.arrPosit1[2].x+this._distans,this.arrPosit1[2].y,false);
					this.drawGrah(this.graphics1,this.arrPosit1[1].x+this._distans,this.arrPosit1[1].y,false);
					this.drawGrah(this.graphics1,this.arrPosit1[0].x+this._distans,this.arrPosit1[0].y,false);

					this.drawGrah(this.graphics1,numBlok[i+1],this.arrPosit1[0].y,false);
					this.drawGrah(this.graphics1,numBlok[i+1],this.arrPosit1[5].y,false);
					this.drawGrah(this.graphics1,this.arrPosit1[5].x+this._distans,this.arrPosit1[5].y,false);					
				}
			}
		}

		/*this.graphDeb.clear();	
		this.graphDeb.lineStyle(5, 0xff0000, 1);
		this.graphDeb.drawRect(this.rectBig.x,this.rectBig.y,this.rectBig.w,this.rectBig.h)*/




		////////////////////////////////////////////////////////////////////////
		////////////////////////////////////////////////////////////////////////
		//if(this.idArr==0){
			/*trace(this.arrPosit)
			for (var i = 0; i < this.arrPosit.length; i++) {
				trace(i+" "+this.arrPosit[i].x)
			}
			trace(this.arrPosit1)
			for (var i = 0; i < this.arrPosit1.length; i++) {
				trace(i+" "+this.arrPosit1[i].x)
			}*/
			var bb=true;
			if(this._rotation>-Math.PI/2&&this._rotation<Math.PI/2)bb=false;


			var xx=this._distans-this.arrPosit[0].x+this.arrPosit1[5].x
			if(xx<1000){
				this.c2dt.visible=false				
			}else{
				this.c2dt.visible=true
				this.text.text=Math.round(xx)+""				
				if(bb==false){
					this.c2dt.x=(xx-this.text.width)/2;
					this.c2dt.y=this._delph/2
					this.c2dt.rotation=0
				}else{
					this.c2dt.x=(xx)/2+this.text.width/2;
					this.c2dt.y=this._delph/2+32*this._mashtabText
					this.c2dt.rotation=Math.PI
				}				
			}
			xx=this._distans-this.arrPosit[5].x+this.arrPosit1[0].x;
			if(xx<1000){
				this.c2dt1.visible=false;				
			}else{
				this.c2dt1.visible=true;
				this.text1.text=Math.round(xx)+"";
				if(bb==false){
					this.c2dt1.x=(xx-this.text1.width)/2;
					this.c2dt1.y=-this._delph/2-32*this._mashtabText;
					this.c2dt1.rotation=0;
				}else{
					this.c2dt1.x=(xx)/2+this.text1.width/2;
					this.c2dt1.y=-this._delph/2;//-32*this._mashtabText
					this.c2dt1.rotation=Math.PI;
				}
			}
			
		//}



		////////////////////////////////////////////////////////////////////////
		////////////////////////////////////////////////////////////////////////


		this.stAct.draw1()

		this.par.render()
	}

	var pOld={x:0,y:0}
	this.drawGrah = function (_g, _x,_y, _b) {
		if(_b){
			pOld.x=_x
			pOld.y=_y
			_g.moveTo(_x,_y)
		}else{
			if(_x!=pOld.x ||  _y!=pOld.y){
				pOld.x=_x
				pOld.y=_y
				_g.lineTo(_x,_y)
			}
			
		}

	}




	this.plusVor = function (_x,_y) {		
		if(sahh==0){
			this.arrVorur[sahh].set(_x,_y)			
			sahh++;
		}else{	
			if(this.arrVorur[sahh-1].x!=_x||this.arrVorur[sahh-1].y!=_y){			
				if(this.arrVorur[0].x!=_x||this.arrVorur[0].y!=_y)
				if(sahh<this.arrVorur.length){
					this.arrVorur[sahh].set(_x,_y)					
					sahh++;
					this.aVKol=sahh
				}

			}
		}
	}




	this.dragPost=function(){		
		this.content2d.x=this.position.x;
		this.content2d.y=this.position.y;
		this.content2d.rotation=this._rotation;
	

		this.content2d1.x=this.position.x;
		this.content2d1.y=this.position.y;
		this.content2d1.rotation=this._rotation;
		this.draw1();
		this.stage.render();
		this.poiskGran();
	}

	////////////////////////////////
	var a1,d1,a
	var pNull=new Position()

	this.arrGran = [new Position(), new Position(), new Position(), new Position()];
	this.rectBig={x:0,y:0,x1:0,y1:0,w:0,h:0,o:null}
	this.poiskGran=function(){
		a=calc.getAngle(this.position, this.position1);
		
		this.arrGran[0].set(this.arrPosit[0].x,this.arrPosit[0].y);
		a1=calc.getAngle(pNull, this.arrGran[0]);
        d1=calc.getDistance(pNull, this.arrGran[0]);
        calc.getVector(d1,a-a1-Math.PI,this.arrGran[0])
        this.arrGran[0].x+=this.position.x;
        this.arrGran[0].y+=this.position.y;

    


        this.arrGran[1].set(this.arrPosit1[5].x,this.arrPosit1[5].y);
		a1=calc.getAngle(pNull, this.arrGran[1]);
        d1=calc.getDistance(pNull, this.arrGran[1]);
        calc.getVector(d1,a+a1,this.arrGran[1])

        this.arrGran[1].x+=this.position1.x;
        this.arrGran[1].y+=this.position1.y;




        this.arrGran[2].set(-this.arrPosit1[0].x,this.arrPosit1[0].y);
		a1=calc.getAngle(pNull, this.arrGran[2]);
        d1=calc.getDistance(pNull, this.arrGran[2]);
        calc.getVector(d1,a-a1+Math.PI,this.arrGran[2])
        this.arrGran[2].x+=this.position1.x;
        this.arrGran[2].y+=this.position1.y;


        this.arrGran[3].set(-this.arrPosit[5].x,this.arrPosit[5].y);
		a1=calc.getAngle(pNull, this.arrGran[3]);
        d1=calc.getDistance(pNull, this.arrGran[3]);
        calc.getVector(d1,a+a1,this.arrGran[3])
        this.arrGran[3].x+=this.position.x;
        this.arrGran[3].y+=this.position.y;

        this.rectBig.x=99999999999
        this.rectBig.y=99999999999
        this.rectBig.x1=-29999999999
        this.rectBig.y1=-29999999999
        for (var i = 0; i < this.arrGran.length; i++) {
        	if(this.rectBig.x>this.arrGran[i].x)this.rectBig.x=this.arrGran[i].x
        	if(this.rectBig.x1<this.arrGran[i].x)this.rectBig.x1=this.arrGran[i].x
        	if(this.rectBig.y>this.arrGran[i].y)this.rectBig.y=this.arrGran[i].y
        	if(this.rectBig.y1<this.arrGran[i].y)this.rectBig.y1=this.arrGran[i].y	
        }
    	this.rectBig.w=this.rectBig.x1-this.rectBig.x
        this.rectBig.h=this.rectBig.y1-this.rectBig.y
        //this.rectBig.y-=this.rectBig.h;
     


	}
	var rez,bp,bp1,res
	var arrayCol=[]
	this.isRect=function(r,b){
		if(b==undefined)this.poiskGran();	
		if(calc.isRectS(r,this.rectBig)==true){
			arrayCol.length=0
			bp=calc.isRectPoint(r, this.position);
			bp1=calc.isRectPoint(r, this.position1);
			if(bp==true||bp1==true){
				if(bp==true)arrayCol.push(this.addPoint);
				if(bp1==true)arrayCol.push(this.addPoint1);	
			}


			if(arrayCol.length!=0&&arrayCol[0].uuid!=this.uuid)arrayCol.unshift(this);

			if(arrayCol.length==0){//Ищем по массиву линий краюв
				for (var i = 0; i < this.arrGran.length; i+=2) {
					res=calc.isRectLine(r, this.arrGran[i], this.arrGran[i+1]);
					if(res==true){
						arrayCol.unshift(this);
						break;
					}
				}
			}

			
			if(arrayCol.length!=0){
				for (var i = 0; i < this.windows.array.length; i++) {
					arrayCol.push(this.windows.array[i])
				}
				return arrayCol;
			}
		}
		return null;
	}


	///////////////////////////////
	
	
    
	this.animat=function(time){
		if(this.tween==undefined){
			this.tween = new TWEEN.Tween(this.graphics);
			this.tween.onUpdate(function(){
				
				self.par.render();
			})
		}
		this.graphics.alpha=0;
		this.tween.to({alpha:1},time).start();
	}


	//////////////////////////////
	var p,p1,p2
	var bb,a,pr;
	var sten;
	var pp,pp1,pp2
	this.korectOffset=function(){
		if(this.sUi!=-1){
			bb=false;
			this.offset=0
			if(sten!=undefined)if(sten.uuid==this.sUi)if(sten.life==true){//уже нашли и она ок				
				bb=true;
			}
			if(this._addPoint==undefined)return
			if(this._addPoint1==undefined)return	

			if(bb==false){//ищем стенку к, если есть в списке
				if(sten==undefined){
					for (var i = 0; i < _stage.arrSplice.length; i++) {
						if(_stage.arrSplice[i].life==false)continue;
						if(_stage.arrSplice[i].uuid==this.sUi){
							sten=_stage.arrSplice[i]
							bb=true;
						}
					}
				}
			}

			if(bb==true){
				
				p=null;
				p1=null;
				p2=null;
				
				if(this._addPoint._uuid==sten._addPoint._uuid){//0=0
					p=this._addPoint1
					p1=this._addPoint
					p2=sten._addPoint1
				}

				if(this._addPoint1._uuid==sten._addPoint._uuid){//1=0
					p=this._addPoint
					p1=this._addPoint1
					p2=sten._addPoint1
				}

				if(this._addPoint._uuid==sten._addPoint1._uuid){//0=0
					p=this._addPoint1
					p1=this._addPoint
					p2=sten._addPoint
				}

				if(this._addPoint1._uuid==sten._addPoint1._uuid){//1=0
					p=this._addPoint
					p1=this._addPoint1
					p2=sten._addPoint
				}


				if(p!=null){
					a=calc.getTreeAngel(p.position,p1.position,p2.position,true)
					pr=(a-Math.PI)/Math.PI;				
					
					if(this._bChaz==false){
						if(pr==1)pr=-1
						pp=this.delph/2-sten.delph/2;//центр
						pp1=sten.delph//лево
										
						if(pr<=0){
							this.offset=pp-pr*pp1
						}else{
							this.offset=pp//-pr*pp2
						}
					}else{
						pp=-(this.delph/2-sten.delph/2);//центр
						pp1=sten.delph//лево									
						if(pr>=0){
							this.offset=pp-pr*pp1
						}else{
							this.offset=pp//-pr*pp2
						}
					}
				}				
			}		
		}
	}

	



}
SpliceSten.prototype = Object.create(Splice.prototype);
SpliceSten.prototype.constructor = SpliceSten;

SpliceSten.prototype.getObj = function () {
	var o = Splice.prototype.getObj.call(this);
	o.type = this.type;
	o.windows = this.windows.getObj();
	o.colorSten = this.colorSten;
	o.height = this.height;
	o.sUi=this.sUi;
	o.idUi=this.idUi;	
	o.offset=this.offset;
	o.bChaz=this.bChaz;


	o.carrier=this.carrier;
	o.out=this.out;
	o.adjacent=this.adjacent;
	return o;
};
SpliceSten.prototype.setObj = function (o) {
	Splice.prototype.setObj.call(this, o);
	if (o.windows !== undefined) this.windows.setObj(o.windows);
	if (o.boolText!== undefined)  this.boolText=o.boolText;
	if (o.height!== undefined)  this.height=o.height;
	if (o.col3d!== undefined ) this.col3d=o.col3d;
	if (o.idUi!== undefined ) this.idUi=o.idUi;
	if (o.sUi!== undefined ) this.sUi=o.sUi;		
	if (o.offset!== undefined ) this.offset=o.offset;
	if (o.bChaz!== undefined ) this.bChaz=o.bChaz;	

	if (o.carrier!== undefined ) this.carrier=o.carrier;
	if (o.out!== undefined ) this.out=o.out;
	if (o.adjacent!== undefined ) this.adjacent=o.adjacent;	
	
};
SpliceSten.prototype.compare = function (_sten) {
	var rez = true;
	if (!Splice.prototype.compare(this, _sten)) rez = false;
	return rez;
};
SpliceSten.prototype.setSten = function (_sten) {
	Splice.prototype.setSten.call(this, _sten);
};
SpliceSten.prototype.restart = function () {
	Splice.prototype.restart(this);
	//this.windows.clear();
	//this.content2d.addChild(this.sten2D.content2d);
	//this.stage.configureSplice(this);
};

SpliceSten.prototype.drag = function () {
	Splice.prototype.drag.call(this);
	this.stage.addObjFun(this);
	
};
Object.defineProperties(SpliceSten.prototype, {
	height: {
		set: function (value) {
			if (this._height === value) return;			
			this._height = value;
			this._setAllParam('height', this._height);
		},
		get: function () { return this._height; }
	},

	boolText: {
		set: function (value) {
			if (this._boolText === value) return;			
			this._boolText = value;			
			this._setAllParam('boolText', this._boolText);
		},
		get: function () { return this._boolText; }
	},


	active: {
		set: function (value) {
			if (this._active === value) return;			
			this._active = value;
			this.stAct.sahAct=value ? 40: 0;

			this._setAllParam('active', this._active);
		},
		get: function () { return this._active; }
	},

	activMouse: {
		set: function (value) {
			if (this._activMouse == value) return;
			this._activMouse = value;			
			for (var ii = 0; ii < this.arrayClass.length; ii++) {
				if ('activMouse' in this.arrayClass[ii]) this.arrayClass[ii].activMouse = this._activMouse;
			}
		},
		get: function () { return this._activMouse; }
	},


	life: {
		set: function (value) {
			if (this._life == value) return;
			this._life = value;		
			for (var ii = 0; ii < this.arrayClass.length; ii++) {
				if ('activMouse' in this.arrayClass[ii]) this.arrayClass[ii].life = this._life;
			}


			if(this._life==true)this.stage.content2d2.addChild(this.cont2dDeb);
			else if(this.cont2dDeb.parent!=undefined)this.cont2dDeb.parent.removeChild(this.cont2dDeb);

			if(this._life==true)this.stage.content2d2.addChild(this.content2d);
			else if(this.content2d.parent!=undefined)this.content2d.parent.removeChild(this.content2d);

			if(this._life==true)this.stage.content2d1.addChild(this.content2d1);
			else if(this.content2d1.parent!=undefined)this.content2d1.parent.removeChild(this.content2d1);



		},
		get: function () { return this._life; }
	},

/////////////////////////////////////////////
//	
/*this._carrier = true;// несущия
	this._out = true;// несущия
	this._adjacent = true;// несущия
*/
	carrier: {
		set: function (value) {			
			if (this._carrier === value) return;			
			this._carrier = value;			
			this.delph=this.par.getDelphToBoolS(this._carrier,this._out,this._adjacent)	
			this.draw1();				
			
		},
		get: function () { return this._carrier; }
	},

	out: {
		set: function (value) {			
			if (this._out === value) return;			
			this._out = value;
			this.delph=this.par.getDelphToBoolS(this._carrier,this._out,this._adjacent)	
			this.draw1();
			
		},
		get: function () { return this._out; }
	},

	adjacent: {
		set: function (value) {			
			if (this._adjacent === value) return;			
			this._adjacent = value;
			this.delph=this.par.getDelphToBoolS(this._carrier,this._out,this._adjacent)	
			this.draw1();
			
		},
		get: function () { return this._adjacent; }
	},


//////////////////////////
	// ---
	col3d: {
		set: function (value) {
			
			if (this._col3d === value) return;			
			this._col3d = value;
			
			this.materialSten = this.stage.pm.mat.getIDReturn(this._col3d);
			this._setAllParam('col3d', this._col3d);
			if(this.funDragMenu!=undefined)this.funDragMenu()
			this.stage.render()
		},
		get: function () { return this._col3d; }
	},


	col3d1: {
		set: function (value) {
			if (this._col3d1 === value) return;
			this._col3d1 = value;
			this.materialSten1 = this.stage.pm.mat.getIDReturn(this._col3d1);
			this._setAllParam('col3d1', this._col3d1);
			if(this.funDragMenu!=undefined)this.funDragMenu()
			this.stage.render()
		},
		get: function () { return this._col3d1; }
	},

	offset: {
		set: function (value) {
			if (this._offset === value) return;
			this._offset = value;	
		
			this._setAllParam('offset', this._offset);
			if(this.funDragMenu!=undefined)this.funDragMenu();
			this.stage.render()
		},
		get: function () { return this._offset; }
	},
	
	bChaz: {
		set: function (value) {
			if (this._bChaz === value) return;
			this._bChaz = value;	
		
			this._setAllParam('bChaz', this._bChaz);
			if(this.funDragMenu!=undefined)this.funDragMenu();
			this.stage.render()
		},
		get: function () { return this._bChaz; }
	},

	
	

});


/**
* Стена(квадрат) с 4 стен(линий)
* Нужен для изменения внутренней и внешней дистанции
* @class

function SpliceStenSquare (_arr) {
	var self = this;
	this.type = 'SpliceStenSquare';
	this.tipe = 'SpliceStenSquare';

	this._distans0 = 0;
	this._distans1 = 0;
	this.array = [];
	this._activ = false;

	this.getDist01 = function () {

		this._dist0 = 0;
		this._dist1 = 0;
		for (var i = 0; i < this.array.length; i++) {
			this._dist0 += this.array[i].distans0;
			this._dist1 += this.array[i].distans1;
		}
	};


	var pos = new Position();
	var pos1 = new Position();
	var distForOne = 0; // рахница. сколько нужно добавить к каждой стене

	this.upDateDist01ForArr = function (_distOld, dist, nameDist) {
		distForOne = (dist - _distOld) / this.array.length;
		for (var i = 0; i < this.array.length / 2; i++) {

			var p = this.array[i].position.copy();
			var p1 = this.array[i].position1.copy();
			calc.korektToLine(p, p1, ((this.array[i][nameDist] + distForOne) - this.array[i][nameDist]) / 2, 0); // (новый размер - старый) / 2

			if (i === 0) {
				pos.x = p.x;
				pos1.x = p1.x;
			}
			if (i === 1) {
				pos.y = p.y;
				pos1.y = p1.y;
			}
		}

		this.array[0].addPoint.position.x = pos.x;
		this.array[0].addPoint1.position.x = pos1.x;
		this.array[0].addPoint.position.y = pos.y;
		this.array[0].addPoint1.position.y = pos.y;


		this.array[1].addPoint.position.x = pos1.x;
		this.array[1].addPoint1.position.x = pos1.x;
		this.array[1].addPoint.position.x = pos1.x;
		this.array[1].addPoint1.position.x = pos.x;


		this.array[2].addPoint.position.x = pos1.x;
		this.array[2].addPoint1.position.x = pos.x;
		this.array[2].addPoint.position.y = pos1.y;
		this.array[2].addPoint1.position.y = pos1.y;

		this.array[3].addPoint.position.x = pos.x;
		this.array[3].addPoint1.position.x = pos.x;
		this.array[3].addPoint.position.y = pos1.y;
		this.array[3].addPoint1.position.y = pos.y;

		for (var i = 0; i < this.array.length; i++) {
			this.array[i].addPoint.dragVokrug();
			this.array[i].addPoint1.dragVokrug();
		}
	};


	this.setArr = function (_arr) {		
		this.array = _arr;
		this.delph = this.array[0].delph;
	};
}
SpliceStenSquare.prototype = {


	set dist0 (v) {
		if (this._dist0 === v) return;
		this.upDateDist01ForArr(this._dist0, v, '_distans0');

		this._dist0 = v;
	},
	get dist0 () {
		this.getDist01();
		return this._dist0;
	},
	set dist1 (v) {
		if (this._dist1 === v) return;
		this.upDateDist01ForArr(this._dist1, v, '_distans1');

		this._dist1 = v;
	},
	get dist1 () {
		this.getDist01();
		return this._dist1;
	}
};
*/



export function STAct (par) {

	var self = this;
	this.type = 'STAct';
	this.par = par;
	this._sahAct=0;

	this._sahPlus=0;

	this.arrVorur=this.par.arrVorur;	
	this.graphics = new PIXI.Graphics();
    this.par.content2d.addChild(this.graphics);
    this.graphics.alpha=this._sahAct/100;

    this.draw1=function(){
		this.graphics.clear();


	
		
		
		this.graphics.beginFill(par.par.colorUI);		
		this.graphics.moveTo(this.par.arrVorur[0].x,this.par.arrVorur[0].y);
		for (var i = 1; i < this.par.aVKol; i++) {
			this.graphics.lineTo(this.par.arrVorur[i].x,this.par.arrVorur[i].y);				
		}
		this.graphics.lineTo(this.par.arrVorur[0].x,this.par.arrVorur[0].y);
		

    }

    this.corektSetGet=function(){

		this.graphics.alpha = (this._sahAct+this._sahPlus)/100;	
		this.par.par.render()

    }

}
STAct.prototype = {


	set sahAct (v) {
		if (this._sahAct === v) return;			
		this._sahAct = v;
		this.corektSetGet()
	},
	get sahAct () {

		return this._sahAct;
	},

	set sahPlus (v) {
		if (this._sahPlus === v) return;		
		this._sahPlus = v;
		this.corektSetGet()
	},
	get sahPlus () {

		return this._sahPlus;
	},
}