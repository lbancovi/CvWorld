function openNav() {document.getElementById("myNav").style.width = "100%";}function closeNav() {document.getElementById("myNav").style.width = "0%";}

var a = document.addEventListener('readystatechange', function() { var a1="Fiered '" + document.readyState + "' after " + performance.now() + " ms<br>";   console.log(a1); return a1  });

var b = document.addEventListener('DOMContentLoaded', function() { var b1="Fiered DOMContentLoaded after " + performance.now() + " ms<br>";   console.log(b1); return b1     }, false);

var c = window.addEventListener('load', function() { var c1= "Fiered load after " + performance.now() + " ms<br>";  console.log(); return c1   }, false);
  function id(v){return document.getElementById(v); }        stat = id("progstat");
(function(){

  function loadbar() {
    var ovrl = id("overlay"),
        prog = id("progress"),
        stat = id("progstat"),
        img = document.images,
        c = 0;
        tot = img.length;

    function imgLoaded(){
      c += 1;
      var perc = ((100/tot*c) << 0) +"%";
      prog.style.width = perc;
      stat.innerHTML = "Loading "+ perc +"<br>";


      if(c===tot) return doneLoading();
    }
    function doneLoading(){
      ovrl.style.opacity = 0;
      setTimeout(function(){ 
        ovrl.style.display = "none";
      }, 1200);
    }
    for(var i=0; i<tot; i++) {
      var tImg     = new Image();
      tImg.onload  = imgLoaded;
      tImg.onerror = imgLoaded;
      tImg.src     = img[i].src;
    }    
  }
  document.addEventListener('DOMContentLoaded', loadbar, false);
}());       document.addEventListener('readystatechange', function() {  stat = id("progstat"); stat.innerHTML +=  "<br>"+document.readyState + "' after " + performance.now() + " ms<br>" });