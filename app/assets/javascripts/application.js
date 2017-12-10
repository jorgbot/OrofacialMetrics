// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or any plugin's vendor/assets/javascripts directory can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file. JavaScript code in this file should be added after the last require_* statement.
//
// Read Sprockets README (https://github.com/rails/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require jquery
//= require bootstrap-sprockets
//= require jquery_ujs
//= require toastr
//= require turbolinks
//= require_tree .


function loadDatosBasicos(){
    for( j = 0; j < $('.oro-form__group').length; j++) {
        for (i = 0; i < $($('.oro-form__group')[j]).find('input').length; i++) {
            data = $($('.oro-form__group')[j]).attr('id');
            console.log(data);
            $($($('.oro-form__group')[j]).find('input')[i]).attr('data-parent', data);
        }
    }
    for(i = 0; i < $('input').length; i++){
        $($('input')[i]).on('blur',function () {
            parent = $(this).attr('data-parent');
            completado = true;
            for( j=0; j < $('input[data-parent="'+parent+'"]').length; j++ )
            {
                if($($('input[data-parent="'+parent+'"]')[j]).val() == ''){
                    completado = false;
                }
            }
            if(completado){
                $('a[href="#'+parent+'"]').parent().addClass('oro-form__check--active')
            }
        });
    }

}