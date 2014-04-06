var dataservice = {
    getPromise: function (options) {
        return $.ajax({
            url: options.url,
            type: options.type,
            dataType: options.dataType || "json",
            cache: options.cache || false,  // if options.cache is available then set it or else set to "false"
            data: options.data || null,     // if options.data is available then set it or else set to "true"
            async: options.async || true,   // if options.async is available then set it or else set to "true"
            contentType: options.contentType || "application/json"
        });
    }
}

toastr.options = {
    "closeButton": true,
    "debug": false,
    "positionClass": "toast-top-right",
    "onclick": null,
    "showDuration": "200",
    "hideDuration": "200",
    "showEasing": "swing",
    "hideEasing": "linear",
    "showMethod": "fadeIn",
    "hideMethod": "fadeOut"
}

var Logger = {
    LogSuccess: function (message) {
        toastr.success(message, "Success Notification");
    },
    LogError: function (message) {
        toastr.error(message, "!Error Notification");
    },
    LogWarning: function (message) {
        toastr.warning(message);
    },
    LogInformation: function (message) {
        toastr.info(message);
    },
    LogTimeDuration: function (message) {
        toastr.info(message);
    }
}
