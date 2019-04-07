<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title></title>
    <style>
        div {
            width:1000px; height:800px;border: 1px solid;border-color: grey;
        }
    </style>
</head>
<body>
<%--<a href="js/heatmap.js">1111</a>--%>
<div id="heatmap" >
    <img id="" src="../img/2.jpg" width="1000px" height="800px">
</div>

</img>
<%--<img alt="" src="/img/1.jpg">--%>

</body>
<script src="../js/heatmap.js"></script>
<script type="text/javascript">
    // 创建一个heatmap实例对象
    // “h337” 是heatmap.js全局对象的名称.可以使用它来创建热点图实例
    // 这里直接指定热点图渲染的div了.heatmap支持自定义的样式方案,网页外包接活具体可看官网api
    var heatmapInstance = h337.create({
        container: document.querySelector('#heatmap'),
    });
    //构建一些随机数据点,网页切图价格这里替换成你的业务数据
    var points = [];
    var max = 0;
    var width = 1000;
    var height = 800;
    var len = 200;
    while (len--) {
        var val = Math.floor(Math.random()*100);
        max = Math.max(max, val);
        var point = {
            x: Math.floor(Math.random()*width),
            y: Math.floor(Math.random()*height),
            value: val
        };
        points.push(point);
    }
    var data = {
        max: max,
        data: points
    };//因为data是一组数据,web切图报价所以直接setData
    heatmapInstance.setData(data); //数据绑定还可以使用
</script>
</html>