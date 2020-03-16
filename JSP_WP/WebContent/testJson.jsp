<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
<script
  src="https://code.jquery.com/jquery-3.4.1.min.js"
  integrity="sha256-CSXorXvZcTkaix6Yvo6HppcZGetbYMGWSFlBw8HfCJo="
  crossorigin="anonymous"></script>
<script type="text/javascript">
	$(document).ready(function () {
        $.getJSON('https://visitkoreaforme.com/eng/api/tourTop10.json',function(data) {
            
            var html=[];
            $.each(data.list,function (i,item) {
                html.push('<div>');
                html.push('<p>'+item.tourId+'</p>');
                html.push('<p>'+item.tourNm+'<br>');
                html.push('<img src="http://90535647.ucloudcdnglobal.com'+item.tourThumbUrl+'">');
            });
            console.log(html);

            $('#target').html(html.join(''));
        });
    });
</script>
</head>

<body>
    <div id="target"></div>
</body>
</html>