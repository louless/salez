/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
$(function () {
    $('#typeSale li').click(function () {
        $.ajax({
            type: 'POST',
            url: "saleList_Struts", //Struts
            data: "typeSale=" + $(this).val(),
            success: function (html) {
                $("#content_center").html(html);
            }
        });
        return false;
    });

//    $('#Rubric').change(function () {
//        $.ajax({
//            type: 'POST',
//            url: "siteListEdit",
//            data: "idrubric=" + $(this).val(),
//            success: function (html) {
//                $("#content_sitelist").html(html);
//            }
//        });
//        return false;
//    });



});





