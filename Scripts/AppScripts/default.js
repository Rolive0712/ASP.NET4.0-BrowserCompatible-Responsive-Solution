$(function () {
    fakewaffle.responsiveTabs(['xs', 'sm', 'md']);
    var vm = function () {
        var self = this;
        self.notifications = ko.observableArray([]);
        self.GetNotifications = function () {

            $('#tbodyNotifications').empty(); //clear the tbody of table before ajax request
            $('#searchLoadingIcon').show();

            var deferredPromise = dataservice.getPromise({
                url: "WebServices/PTSNotifications.asmx/GetNotificationsList",
                type: "POST",
                data: "{'empId':'1000297015-0','RoleId':-1, 'NotificationTypeIds':'', 'BOWFlag':false}"
            });

            $.when(deferredPromise).done(function (data) {
                var notifications = ko.utils.parseJson(data.d);
                self.notifications(notifications);
                $('#searchLoadingIcon').hide();
                //$('#tblProjectList').trigger("update"); //trigger update on table for jQuery table Sorter to work correctly.
                var name = $('#lblGreeting').text();
                $('#divWelcome').html("<button class='close' data-dismiss='alert'>&times;</button> <strong>Welcome !!</strong>");

            }).fail(function (jqXHR, textStatus, errorThrown) { // async failure
                Logger.LogError(errorThrown + ":" + jqXHR.responseText);
                $('#searchLoadingIcon').hide();
            });
        };
    };

    var viewModel = new vm();
    viewModel.GetNotifications();

    ko.setTemplateEngine(ko.nativeTemplateEngine.instance);
    ko.applyBindings(viewModel, $('#NotificationSection')[0]);

});
