(function($){
    $(document).ready(function(){
        // focus search
        $('header .search-js').click(function() {
            $('header input[name=search]').focus();
        });
        // toggle settings
        var settings =  $('header .settings');
        $('header .settings-js').click(function() {
            settings.toggle('fast', function(){});
            event.stopPropagation();
        });
        $(window).click(function() {
            if (settings.is(":visible")) {
                settings.hide('fast', function () {});
            }
        });
        settings.click(function(event){
            if (settings.is(":visible")) {
                event.stopPropagation();
            }
        });
    });
})(jQuery);