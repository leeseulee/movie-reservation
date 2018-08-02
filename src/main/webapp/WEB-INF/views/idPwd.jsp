<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<link rel="stylesheet" type="text/css" href="/css/idPwd.css">
<title>CINE LIVE</title>
<script>
	function check1() {
		if (document.form1.name.value == "") {
			alert("id�� �Է��ϼ���!");
			document.form1.name.focus();
			return;
		}
		if (document.form1.phone.value == "") {
			alert("��й�ȣ�� �Է��ϼ���!");
			document.form1.phone.focus();
			return;
		}
	}
	
	function check2(){
		if (document.form2.id.value == "") {
			alert("id�� �Է��ϼ���!");
			document.form2.id.focus();
			return;
		}
		if (document.form2.name.value == "") {
			alert("id�� �Է��ϼ���!");
			document.form2.name.focus();
			return;
		}
		if (document.form2.phone.value == "") {
			alert("��й�ȣ�� �Է��ϼ���!");
			document.form2.phone.focus();
			return;
		}
	}
</script>
</head>

<body>

	<jsp:include page="/WEB-INF/include/header.jsp"></jsp:include>
	<link rel="stylesheet" type="text/css"
		href="<c:url value='/css/bootstrap-idPwd.css'/>">
	<div class="id">
		<h1>���̵� ã��</h1>
		<br>
		<form name="form1" action="/searchId.do" method="post"
			onsubmit="check1()">
			<center>
				<table>
					<tr>
						<td class="tdwidth">�̸�</td>
						<td>
						<input type="text" class="form-control" id="email"
						name="name" placeholder="�̸��� �Է��ϼ���.">
						</td>
					</tr>
					<tr>
						<td class="tdwidth">�޴���</td>
						<td>
						<input type="text" class="form-control" id="email"
						name="phone" placeholder="�޴��� ��ȣ�� �Է��ϼ���.">
						</td>
					</tr>
					<tr>
						<td class="tdwidth"></td>
						<td align="right">
						<button type="submit" class="btn btn-default" id="ok">Ȯ��</button>
						</td>
					</tr>
				</table>

				<c:choose>
					<c:when test="${msg1 == 'failure'}">
						<script>
						alert("ȸ������ ������ ��ġ�ϴ� ���̵� �����ϴ�.");
						</script>
					</c:when>
					<c:when test="${msg1 == 'success'}">
						<script>
						var a = "<%=request.getAttribute("msg1name")%>";
						var b = "<%=request.getAttribute("msg1id")%>";
						var c = confirm(a+"���� ���̵�� "+b+"�Դϴ�. Ȯ���� ������ �α��� �������� �̵��մϴ�.");
						if(c==true){
							location.href="loginPage.do";
						}
						</script>
					</c:when>
				</c:choose>

			</center>
		</form>
	</div>

	<div class="pwd">
		<h1>��й�ȣ ã��</h1>
		<br>
		<form name="form2" action="/searchPwd.do" method="post"
			onsubmit="check2()">
			<center>
				<table>
					<tr>
						<td class="tdwidth">���̵�</td>
						<td><input type="text" class="form-control" id="email"
						name="id" placeholder="���̵� �Է��ϼ���."></td>
					</tr>
					<tr>
						<td class="tdwidth">�̸�</td>
						<td><input type="text" class="form-control" id="email"
						name="name" placeholder="�̸��� �Է��ϼ���."></td>
					</tr>
					<tr>
						<td class="tdwidth">�޴���</td>
						<td><input type="text" class="form-control" id="email"
						name="phone" placeholder="�޴�����ȣ�� �Է��ϼ���."></td>
					</tr>
					<tr>
						<td class="tdwidth"></td>
						<td align="right">
						
						<button type="submit" class="btn btn-default" id="ok">Ȯ��</button>
					</tr>
				</table>

				<c:choose>
					<c:when test="${msg2 == 'failure'}">
						<script>
						alert("�Է��Ͻ� ������ ��ġ�ϴ� ȸ���� �����ϴ�.");
						</script>
					</c:when>
					<c:when test="${msg2 == 'success' }">
						<script>
						var a = "<%=request.getAttribute("msg2id")%>";
						var b = "<%=request.getAttribute("msg2password")%>";
						var c = confirm(a+"���� ��й�ȣ�� "+b+"�Դϴ�. Ȯ���� ������ �α��� �������� �̵��մϴ�.");
						if(c==true){
							location.href="loginPage.do";
						}
						</script>
					</c:when>
				</c:choose>
			</center>
		</form>
	</div>

	<br>
	<br>
	<br>
	<br>
	<br>
	<br>
	<br>
	<br>
	<br>
	<br>
	<br>
	<div class="information">
	<h4>�� �̿� ����</h4>
	���׶��̺� �������� : 1234-1234
	<br> ���� ���� �ð� : 09:00 ~ 18:00 (��~��)
	<br>
	</div>
	<jsp:include page="/WEB-INF/include/footer.jsp"></jsp:include>

</body>
</html>