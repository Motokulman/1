
export class Unik_Steps {
	constructor(par) { 
		// super(par, obj, w, h, d); 		
  		var self=this;
  		this.type="Unik_Steps";
        this.par = par;
        this.graphics=this.par.graphics

        var defolt={width:1000, height:1000, delph:1000, step:4, bool:false, bool1:true, bool2:false}

        this._width=800;
        this._height=1000;
        this._delph=1000;
        this._step = 4

        

        this._bool = false
        this._bool1 = true
        this._bool2 = false

        this._heightStep = 100
        
        this.w;
        this.h;
        this.d;

        this.maxWidth


        this.array=[ 
            {tipe:'DSliderBig', name: 'slider1', param: 'width', title: 'width', min: 1, max: 5000, okrug: 10},  
            {tipe:'DSliderBig', name: 'slider2', param: 'height', title: 'height', min: 1, max: 5000, okrug: 10},  
            {tipe:'DSliderBig', name: 'slider3', param: 'step', title: 'step', min: 1, max: 3, okrug: 10},  

            {tipe:'DCheckBox', name: 'check1', param: 'bool', title: 'bool'}, 
            {tipe:'DCheckBox', name: 'check2', param: 'bool1', title: 'bool1'}, 
            {tipe:'DCheckBox', name: 'check3', param: 'bool2', title: 'bool2'}, 
        ];


		/*this.clearDefolt=function(){
			this._width=defolt.width;
        	this._height=defolt.height;
        	this._delph=defolt.delph;
        	this._step = defolt.step
        	
	        this._bool = defolt.bool
	        this._bool1 = defolt.bool1
	        this._bool2 = defolt.bool2
	    }
        this.clearDefolt();*/


        this.dragWHD=function(_w,_h,_d){
        	if (_w != undefined){
	        	this.w = _w;
	        	this.h = _h;
	        	this.d = _d;
		    }
            this._width=this.par._width;
            this._height=this.par._height;


        	
        	this.graphics.clear()
        	this.graphics.beginFill(0x222222, 0);
			this.graphics.lineStyle(10, 0x000000, 1);
        	// this.graphics.drawRect(-this._width/2, this.d/2, this._width, this._height);

        	var xl = 0;
        	var xr = 0;
        	var yy = 0;

        	for (var i = 0; i < this._step; i++) {
	        	if (this._bool == true) {
	        		this.graphics.beginFill(0x222222, 0);
					this.graphics.lineStyle(10, 0x000000, 1);
		        	this.graphics.moveTo(-this._width/2, this.d/2);
		        	this.graphics.lineTo(-this._width/2-this._heightStep*i, this.d/2);
		        	this.graphics.lineTo(-this._width/2-this._heightStep*i, this.d/2+this._height);
		        	if (this._bool1 == false)this.graphics.lineTo(-this._width/2, this.d/2+this._height);
		        	if (this._bool1 == true)this.graphics.lineTo(-this._width/2 - this._heightStep*i, this.d/2+this._height + this._heightStep*i);
	        		xr += this._heightStep
	        	}

	        	if (this._bool1 == true) {
	        		this.graphics.beginFill(0x222222, 0);
					this.graphics.lineStyle(10, 0x000000, 1);
		        	if (this._bool == false)this.graphics.moveTo(-this._width/2, this.d/2+this._height);
		        	this.graphics.lineTo(-this._width/2, this.d/2+this._height + this._heightStep*i);
		        	this.graphics.lineTo(this._width - (this._width/2), this.d/2+this._height + this._heightStep*i);
		        	if (this._bool2 == false)this.graphics.lineTo(this._width - (this._width/2), this.d/2+this._height);
		        	if (this._bool2 == true)this.graphics.lineTo(this._width - (this._width/2) + this._heightStep*i, this.d/2+this._height+ this._heightStep*i);
	        		yy += this._heightStep
	        	}

	        	if (this._bool2 == true) {
	        		this.graphics.beginFill(0x222222, 0)
					this.graphics.lineStyle(10, 0x000000, 1);
		        	if (this._bool1 == false)this.graphics.moveTo(this._width - (this._width/2), this.d/2+this._height);
		        	this.graphics.lineTo(this._width - (this._width/2) + this._heightStep*i, this.d/2+this._height);
		        	this.graphics.lineTo(this._width - (this._width/2) + this._heightStep*i, this.d/2);
		        	this.graphics.lineTo(this._width - (this._width/2), this.d/2);
		        	xl += this._heightStep
	        	}
        	}

			this.graphics.beginFill(0x222222, 0.1);
			this.graphics.lineStyle(10, 0x000000, 1);
        	this.graphics.drawRect(-this._width/2-xr, this.d/2, this._width+xl+xr, this._height+yy);
        }            

        

        this.setObj=function(o){
        	if(o==undefined)return
        	if(o.width==undefined)return	
        	
	    
	        this._delph= o.delph;
	        this._step = o.step;

	        this._bool = o.bool;
	        this._bool1 = o.bool1;
	        this._bool2 = o.bool2;
            
            
	        this.par.dragWHD();
            this.korWit();
            

        }
        this.getObj=function(){
            var o={}
            

			//o.width = 	this._width;
			//o.height = this._height;
			o.delph =  this._delph;
			o.step =  this._step;

			o.bool =  this._bool;
			o.bool1 = this._bool1;
			o.bool2 = this._bool2;

            return  o
        }

        // Object.defineProperties(Unik_Steps.prototype, {  
        //     width: {
        //         set: function (value) {
        //             if(this._width!=value){
        //                 this._width= value;            
        //                 this.par.dragWHD()
        //                 this.par.par.render()
        //             }
        //         },
        //         get: function () { return this._width; }

        //     }, 

        //     height: {
        //         set: function (value) {
        //             if(this._height!=value){
        //                 this._height= value;
        //                 this.par.dragWHD()
        //                 this.par.par.render()
        //             }
        //         },
        //         get: function () { return  this._height;}
        //     },

        //     step: {
        //         set: function(value) {
        //             if(this._step!=value){
        //                 this._step= value;
        //                 this.par.dragWHD()
        //                 this.par.par.render()
        //             }
        //         },   
        //         get: function() { return  this._step;}
        //     },

        //     bool: {
        //         set: function(value) {
        //             if(this._bool!=value){
        //                 this._bool= value;
        //                 this.par.dragWHD()
        //                 this.par.par.render()     
        //             }
        //         },
        //         get: function() { return  this._bool;}  
        //     },

        //     bool1: {
        //         set: function(value) {
        //             if(this._bool1!=value){
        //                 this._bool1= value;
        //                 this.par.dragWHD()
        //                 this.par.par.render()     
        //             }
        //         },
        //         get: function() { return  this._bool1;}  
        //     },

        //     bool2: {
        //         set: function(value) {
        //             if(this._bool2!=value){
        //                 this._bool2= value;
        //                 this.par.dragWHD()
        //                 this.par.par.render()     
        //             }
        //         },
        //         get: function() { return  this._bool2;}  
        //     }
        // })

        //////////////////////////////////////
        this.postParent=function(){
            
            if(this.par.parent==undefined){
                //this.width= 1000;
            }
        }


        /////////////////////////////

        this.korWit=function(){
            this.par._width=this._width;
            this.par.rect.x=-this._width/2;
            this.par.rect.x1=this._width/2;
            this.par.rect.w=this._width;            
            this.par.shape.setRect(this.par.rect); 
            this.par.setReal(this.par._x,this.par._y,this.par._z);

        }

	}

    set width(value) {
        if(this._width!=value){
            this._width = value;            
            this.korWit()
          	this.par.dragWHD()
          	this.par.par.render()
        }
    }    
    get width() { return  this._width;}    

    set height(value) {
        if(this._height!=value){
            this.par._height= value;

          	this.par.dragWHD()
			this.par.par.render()
        }
    }    
    get height() { return  this._height;}


    set step(value) {
        if(this._step!=value){
            this._step= value;
          	this.par.dragWHD()
			this.par.par.render()
        }
    }    
    get step() { return  this._step;}


    set bool(value) {
        if(this._bool!=value){
            this._bool= value;
            this.par.dragWHD()
			this.par.par.render()     
        }
    }    
    get bool() { return  this._bool;}  

    set bool1(value) {
        if(this._bool1!=value){
            this._bool1= value;
            this.par.dragWHD()
			this.par.par.render()     
        }
    }    
    get bool1() { return  this._bool1;}  


    set bool2(value) {
        if(this._bool2!=value){
            this._bool2= value;
            this.par.dragWHD()
			this.par.par.render()     
        }
    }    
    get bool2() { return  this._bool2;}  


}
