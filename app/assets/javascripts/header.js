function mycarousel_initCallback(carousel){
        // Disable autoscrolling if the user clicks the prev or next button.
        carousel.buttonNext.bind('click', function() {
            carousel.startAuto(0);
        });

        carousel.buttonPrev.bind('click', function() {
            carousel.startAuto(0);
        });

        // Pause autoscrolling if the user moves with the cursor over the clip.
        carousel.clip.hover(function() {
            carousel.stopAuto();
        }, function() {
            carousel.startAuto();
        });
    };

    /**
     * Utility function for truncating a string without breaking words.
     */
    function mycarousel_truncate(str, length, suffix) {
        if (str.length <= length) {
            return str;
        }

        if (suffix == undefined) {
            suffix = '...';
        }

        return str.substr(0, length).replace(/\s+?(\S+)?$/g, '') + suffix;
    };

    jQuery(document).ready(function() {
        jQuery('#mycarousel').jcarousel({
            vertical:true,
            scroll: 1,
            auto: 3,
            wrap: 'both',
            initCallback: mycarousel_initCallback
        });
    });
