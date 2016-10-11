<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<!-- <!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd"> -->
<!DOCTYPE html>

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Customer Enrichment</title>
</head>
<body>

	<h2>Edit Customer</h2>
	<p><input type="checkbox" > This customer would like to opt-out of future communications </p>
	<form:form commandName="searchResult" method="POST">
		<table>
			<tbody>
				<tr>
					<td><form:label path="customer.fname" style="color:blue">First Name :</form:label></td>
					<td><form:input path="customer.fname"></form:input></td>
					<td>&nbsp;&nbsp;&nbsp;</td>
					<td><form:label path="customer.lname" style="color:blue">Last Name :</form:label></td>
					<td><form:input path="customer.lname"></form:input></td>
				</tr>
				<tr>
					<td><form:label path="customer.email" style="color:blue">Email :</form:label></td>
					<td><form:input path="customer.email"></form:input></td>
					<td>&nbsp;&nbsp;&nbsp;</td>
					<td><form:label path="customer.phone_number" style="color:blue">Phone Number :</form:label></td>
					<td><form:input path="customer.phone_number"></form:input></td>
				</tr>
				<tr>
					<td><form:label path="customer.address.addressLine1" style="color:blue">AddressLine1 :</form:label></td>
					<td><form:input path="customer.address.addressLine1"></form:input></td>
					<td>&nbsp;&nbsp;&nbsp;</td>
					<td><form:label path="customer.address.addressLine2" style="color:blue">AddressLine2 :</form:label></td>
					<td><form:input path="customer.address.addressLine2"></form:input></td>
				</tr>
				<tr>
					<td><form:label path="customer.address.city" style="color:blue">City :</form:label></td>
					<td><form:input path="customer.address.city"></form:input></td>
					<td>&nbsp;&nbsp;&nbsp;</td>
					<td><form:label path="customer.address.state" style="color:blue">State :</form:label></td>
					<td><form:input path="customer.address.state"></form:input></td>
				</tr>
				<tr>
					<td><form:label path="customer.address.country" style="color:blue">Country :</form:label></td>
					<td><form:input path="customer.address.country"></form:input></td>
				</tr>
				<tr>
					<td><form:label path="loyalty.employeeCount" style="color:blue">Employee Count :</form:label></td>
					<td><form:input path="loyalty.employeeCount"></form:input></td>
					<td>&nbsp;&nbsp;&nbsp;</td>
					<td><form:label path="loyalty.locationCount" style="color:blue">Location Count :</form:label></td>
					<td><form:input path="loyalty.locationCount"></form:input></td>
				</tr>
				<tr>
					<td><form:label path="loyalty.annualRevenue" style="color:blue">Annual Revenue :</form:label></td>
					<td><form:input path="loyalty.annualRevenue"></form:input></td>
					<td>&nbsp;&nbsp;&nbsp;</td>
					<td><form:label path="loyalty.monthlySpend" style="color:blue">Monthly Spend :</form:label></td>
					<td><form:input path="loyalty.monthlySpend"></form:input></td>
				</tr>
				<tr>
					<td colspan="2"><input type="submit" value="Submit" style="color:blue"/></td>
					<td colspan="2"><input type="submit" value="SaveForLater" style="color:blue"/>
				</tr>
			</tbody>
		</table>
	</form:form>
</body>

</html>