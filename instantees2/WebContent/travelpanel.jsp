<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

	<div id="messageDiv" style="display: none;"></div>
	
	<script>
		jQuery(function($) {
			$("input[type='submit']").click(function(e) {
				e.preventDefault();
				
				var name = $("input[name='nameofclient']").val();
				var email = $("input[name='emailofclient']").val();
				var address = $("input[name='addressofclient']").val();
				var phone = $("input[name='phoneofclient']").val();
				var description = $("input[name='descriptionofclient']").val();
				var imagelink1 = $("input[name='imagelink1']").val();
				var imagelink2 = $("input[name='imagelink2']").val();
				var imagelink3 = $("input[name='imagelink3']").val();
				
				
				var catagory =  $('#list option:selected').text();
				var subcid =  $('#list2 option:selected').text();

				var data = {
					name : nameofclient,
					email : emailofclient,
					address : addressofclient,
					phone : phoneofclient,	
				    description : descriptionofclient,
				    imagelink1 : imagelink1,
					imagelink2 : imagelink2,
					 imagelink3 : imagelink3,	
					list : list,
					list2 : list2,
					
				}
				$.ajax({
					type : "POST",
					url : "./education",
					data : data,
				}).done(function(data) {
					alert(data);
					window.location = './panel.jsp';
					
				}).fail(function(jqXHR, textStatus) {
					alert(textStatus);
				});
			});
		});

		//function to display message to the user
		function showMessage(results) {
			if (results == 'DATA HAS BEEN ENTERED SUCCESSFULLY!') {
				$('#messageDiv')
						.html(
								"<font color='green'>DATA HAS BEEN ENTERED SUCCESSFULLY!</font>")
			} else if (results == 'FAILURE') {
				$('#messageDiv')
						.html(
								"<font color='red'>DATA CANNOT BE ENTERED!</font>")
			}
		}
	</script>


<div class="messageDiv"></div>


<form action="education" method="post">
NAME OF ORGANIZATION:  <input type="text" name="nameofclient"><br>
 CONTACT NO. <input type="text" name="phoneofclient"><br>
 EMAIL ID: <input type="text" name="emailofclient"><br>
ADDRESS:  <input type="text" name="addressofclient"><br>
 DESCRIPTION: <input type="text" name="descriptionofclient"><br>
 IMAGE LINK 1: <input type="text" name="imagelink1"><br>
IMAGE LINK 2:  <input type="text" name="imagelink2"><br>
 IMAGE LINK 3: <input type="text" name="imagelink3"><br>
  


<br>
SELECT CATEGORY:
<select name="list">
 
  <option  value="CIVIL LAWYER">CIVIL LAWYER</option>
  <option value="COPERATE">COPERATE</option>
  <option  value="CRIMINAL">CRIMINAL</option>
  <option value="CONSULTATION">CONSULTATION</option>
    <option  value="LIFE INSURANCE">LIFE INSURANCE</option>
    <option  value="BUSSINESS">BUSSINESS</option>
  <option  value="GOLD">GOLD</option>
  <option  value="TRAVEL">TRAVEL</option>
  <option  value="PROJECT MANAGEMENT">PROJECT MANAGEMENT</option>
  <option  value="ADVERTISEMENT">ADVERTISEMENT</option>
  
  
  
 
</select><br>

Category ID: <select name="list2">
 <option  value="29">37</option>
  <option  value="30">38</option>
  <option value="31">39</option>
  <option  value="32">40</option>
  <option value="33">41</option>
  <option  value="34">42</option>
  <option  value="35">43</option>
  <option  value="36">44</option>
    <option  value="35">45</option>
  <option  value="36">46</option>
   
        
</select><br>
  <input type="submit">
  
  
  
   <center><font color="red">PLEASE ENTER DATA ACCORDING TO CATEGORY ID:
   
   <BR>    <H1> 12:  <BR>
   13: EVENT MANAGEMENT<BR>
   14: PARTY<BR>
   15: DECORATOR<BR>
   16: BIRTHDAY PARTY
   <BR> 17: STAGE DECORATOR<BR>
   18: KITTY PARTY<BR>
   19: SEMINAR <BR>
   20: PRODUCT LAUNCH<BR>
  </H1>
   
   
   
   </font></center>
</form>
</body>
</html>

