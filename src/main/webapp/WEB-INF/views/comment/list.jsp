<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script src="http://code.jquery.com/jquery-latest.js"></script>

</head>
<body>
	<table id="dt1" border="1">
		<thead>
			<tr>
				<th>번호</th>
				<th>제목</th>
				<th>작성자</th>
				<th>작성일</th>
				<th>수정일</th>
				<th>조회수</th>
			</tr>
		</thead>
		<!-- beforebegin --><tbody><!-- afterbegin --><!-- beforeend --></tbody><!-- afterend -->
	</table>

	<script>
		var conf = {
			url : '/cms',
			method : 'GET',
			success : function(res) {
				/* var html = '<tr><td colspan="6">innerHTML</td></tr>'; */
				var html = ''
				for(var idx in res){
					var cm = res[idx];
					html += '<tr onclick=goView(' + cm.cmNum + ')>';
						html += '<td>' + cm.cmNum +'</td>';
						html += '<td>' + cm.cmTitle +'</td>';
						html += '<td>' + cm.miNum +'</td>';
						html += '<td>' + cm.credat +'</td>';
						html += '<td>' + cm.moddat +'</td>';
						html += '<td>' + cm.cmCnt +'</td>';	
					html += '</tr>';
				}
				document.querySelector('#dt1>tbody').innerHTML += html;
				
				
			},
			error : function(error) {
			}
		}
		
		$.ajax(conf);
		function goView(cmNum){
			location.href="/views/comment/view?cmNum=" + cmNum
		}
		
	</script>
</body>
</html>

<!-- <link rel="stylesheet" type="text/css"
	href="https://cdn.datatables.net/1.10.22/css/jquery.dataTables.css">

<script type="text/javascript" charset="utf8"
	src="https://cdn.datatables.net/1.10.22/js/jquery.dataTables.js"></script> -->
	
<!-- $("#dt1").DataTable({
					data:res,
					columns : [
						{data : 'cmNum'},
						{data : 'cmTitle'},
						{data : 'miNum'},
						{data : 'credat'},
						{data : 'moddat'},
						{data : 'cmCnt'},
					]
				}); -->