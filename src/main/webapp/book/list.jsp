<html>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>List Books</title>
</head>
<body style="background-color:thistle;">


	<%@ include file="../../layout/header.jsp"%>
	<div class="container-fluid">


		<div class="row">
			<div class="col-md-9">

				<h4>LIST OF BOOKS</h4>
			
				<c:forEach items="${books}" var="book">
					<div class="row book-container-bg">
						<div class="col-lg-4 col-md-4 col-xs-12">
							<img class="card-img-left" src="../assets/images/java1.jpg"
								width="100" alt="Card image cap">
						</div>

						<div class="col-lg-8 col-md-8 col-xs-12">
							<p class="card-text">${book.name}-Rs.${book.price }
								<br /> Published Date - ${book.releasedDate}
							</p>
							<a href="../books/${book.id}" class="btn btn-success btn-sm">View</a>
						</div>
					</div>
				</c:forEach>
			</div>
		</div>
	</div>
</body>
</html>