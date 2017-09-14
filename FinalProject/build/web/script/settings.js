$(document).ready(function(){
    
    $(".close").click(function(){
        $(".row").eq(0).fadeOut("slow");
    })
    
    $("form").eq(0).submit(function(event){
        if($("#password").val()!=$("#retype-password").val()){
            $(".row").eq(0).fadeIn("slow");
            event.preventDefault();
        }
    });
    
    $("#eye").on({mouseover:function(){
           $("#password").attr("type","text");
       },
   mouseout:function(){
       $("#password").attr("type","password");
   }});
   
    $("#eye1").on({mouseover:function(){
           $("#retype-password").attr("type","text");
       },
   mouseout:function(){
       $("#retype-password").attr("type","password");
   }})
    
   $("#a").click(function(){
       $("#report").fadeOut("slow",function(){
           $("#update").fadeIn("slow")
       });
       
   }); 
    
   $("#b").click(function(){
       $("#update").fadeOut("slow",function(){
           $("#report").fadeIn("slow")
       });

   })  
});