$(document).ready(function () {
    drawStatusChart();
    drawFinancialsChart();
    drawCostChart();
    $('#btnIssues').click(function (event) {
        __doPostBack('btnIssues', '');
    });
});

var flippedBoxes = new Array();
var index;
function flip(className) {
    //  debugger;
    //    if (!Array.prototype.indexOf) {
    //        Array.prototype.indexOf = function (val) {
    //            index = $.inArray(className, this);
    //        };
    //    }
    if (flippedBoxes.indexOf)
        index = flippedBoxes.indexOf(className);
    else
        index = $.inArray(className, flippedBoxes);
    if (index > -1) {
        $("." + className).flippyReverse();
        flippedBoxes.splice(index, 1);

        if (className == "status")
            setTimeout("drawStatusChart()", 500);
        else if (className == "financials")
            setTimeout("drawFinancialsChart()", 500);
        else if (className == "cost")
            setTimeout("drawCostChart()", 500);

        setTimeout(function () { $("." + className).css('background', '#dddddd url(/ptswpoc/Content/fold.png) no-repeat top right'); }, 500);
    }
    else {
        var title = "";
        if (className == "risks")
            title = "Risks";
        else if (className == "issues")
            title = "Issues";
        else if (className == "projects")
            title = "Active Projects";
        else if (className == "status")
            title = "Status";
        else if (className == "financials")
            title = "Financials";
        else if (className == "cost")
            title = "Forecast vs Actual";

        $("." + className).flippy({
            color_target: "#dddddd",
            duration: "500",
            verso: "<div class=\"list\"><h3>" + title + "</h3><p><a href=\"javascript:;\">1 - Lorem ipsum dolor sit amet</a></p><p><a href=\"javascript:;\">2 - Curabitur vestibulum, ante vel mattis</a></p><p><a href=\"javascript:;\">3 - Proin condimentum neque id dui tristique interdum</a></p><p><a href=\"javascript:;\">4 - In hac habitasse platea dictumst</a></p><p><a href=\"javascript:;\">5 - Praesent commodo faucibus nunc sit amet fermentum</a></p><p><a href=\"javascript:;\">6 - In faucibus ante at lorem viverra</a></p></div>"
        });
        flippedBoxes.push(className);
    }
}

function drawStatusChart() {
    var pie = new RGraph.Pie('statusChart', [1, 6, 5, 2, 3])
            .Set('labels', ['Inactive', 'Active', 'Completed', 'Hold', 'Cancelled'])
            .Set('text.color', '#2b2b2b')
            .Set('key', ['Culshaw, Michael', 'Cygan, Krzysztof', 'Furlong, Damian', 'Yule, Brian'])
            .Set('key.position.x', 400)
            .Set('key.position.y', 100)
            .Set('colors', ['#FF0000', '#007BFF', '#008f1b', '#e5ef41', '#FF8800'])
            .Set('radius', 60)
            .Set('strokestyle', '#2b2b2b')
            .Set('linewidth', 1)
            .Set('shadow', true)
            .Set('shadow.offsetx', 0)
            .Set('shadow.offsety', 0)
            .Set('shadow.blur', 5)
            .Set('labels.sticks', false);

    pie.Draw();
}

function drawFinancialsChart() {
    var bar = new RGraph.Bar('financialsChart', [40, 50, 40, 60, 40, 50])
            .Set('labels', ['Mar', 'Apr', 'May', 'Jun', 'Jul', 'Aug'])
            .Set('background.grid', true)
            .Set('text.color', '#2b2b2b')
            .Set('axis.color', '#2b2b2b')
            .Set('colors', ['#007BFF'])

    bar.Draw();
}


function drawCostChart() {
    var line = new RGraph.Line('costChart', [[35, 52, 43, 75, 30, 49], [40, 50, 40, 60, 40, 50]])
        .Set('spline', true)
        .Set('numxticks', 0)
        .Set('numyticks', 0)
        .Set('hmargin', 10)
        .Set('background.grid.autofit.numvlines', 11)
        .Set('colors', ['#FF0000', '#007BFF'])
        .Set('text.color', '#2b2b2b')
        .Set('axis.color', '#2b2b2b')
        .Set('linewidth', 1)
        .Set('gutter.left', 40)
        .Set('gutter.right', 15)
        .Set('labels', ['Mar', 'Apr', 'May', 'Jun', 'Jul', 'Aug'])
        .Set('shadow', false)

    line.Draw();
}
