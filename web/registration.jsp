<%-- 
    Document   : registration
    Created on : Aug 30, 2017, 2:09:28 PM
    Author     : sawar
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <title>Student Registration Form</title>

      	<script type="text/javascript">
            function check()
            {
        	if((document.getElementById('fname').value=="") || (document.getElementById('date').value=="") || (document.getElementById('email').value=="") || (document.getElementById('mobile').value=="") || ((document.form.Gender[0].checked==false) && (document.form.Gender[1].checked==false)) || (document.getElementById('address').value=="") || (document.getElementById('city').value=="") || (document.getElementById('state').value=="") || (document.getElementById('pincode').value=="") || (document.getElementById('country').value=="") || (document.getElementById('tenth').value=="") || (document.getElementById('twelvth').value=="") || (document.getElementById('grad').value=="") || ((document.form.Course[0].checked==false) && (document.form.Course[1].checked==false) && (document.form.Course[2].checked==false) && (document.form.Course[3].checked==false) && (document.form.Course[4].checked==false) && (document.form.Course[5].checked==false)) )
		{
                    alert("Please fill all details");
//                    document.getElementById('t1').focus();
                    return false;
		}
                else
                {
                    return true;
                }
            };
	</script>

	<style type="text/css">

	body
	{
		background-image: url("images/bpit.PNG");
		background-repeat: no-repeat;
		background-size: 1500px 950px;
	}
	h3
	{
		font-family: Calibri; font-size: 22pt; font-style: normal; font-weight: bold; color:SlateBlue;
		text-align: center; text-decoration: underline
	}
	table
	{
		font-family: Calibri; color:black; font-size: 11pt; font-style: normal;
		background-color: rgba(255,255,255,0.7); border-collapse: collapse; border: 2px solid navy
	}
	table.inner
	{
                text-align: center;
        }
        input:focus, textArea:focus
        {
            transform: scale(1.05);
        }        
	</style>
</head>
 
<body>
	<h3>STUDENT REGISTRATION FORM</h3>
        <form action="enrolled" method="POST" enctype="multipart/form-data" name="form">
 
		<table align="center" cellpadding = "10">
	 
			<tr>
				<td>FIRST NAME</td>
                                <td><input type="text" name="First_Name" maxlength="30" id="fname"/>(max 30 characters a-z and A-Z)</td>
			</tr>
	 
			<tr>
				<td>LAST NAME</td>
                                <td><input type="text" name="Last_Name" maxlength="30" id="lname"/>(max 30 characters a-z and A-Z)</td>
			</tr>
	 
			<tr>
				<td>DATE OF BIRTH</td>
                                <td><input type="date" name="date1" id="date" /></td>

			</tr>
	 
			<tr>
				<td>EMAIL ID</td>
                                <td><input type="email" name="Email_Id" id="email" /></td>
			</tr>
	 
			<tr>
				<td>MOBILE NUMBER</td>
                                <td><input type="text" name="Mobile_Number" maxlength="10" id="mobile" />(10 digit number)</td>
			</tr>
	 
			<tr>
				<td>GENDER</td>
				<td>
                                    <input type="radio" name="Gender" value="Male" id="gender" />Male
                                    <input type="radio" name="Gender" value="Female" id="gender" />Female
				</td>
			</tr>
	 
			<tr>
				<td>ADDRESS <br /><br /><br /></td>
                                <td><textarea name="Address" rows="2" cols="30" id="address"></textarea></td>
			</tr>
	 
			<tr>
				<td>CITY</td>
				<td><input type="text" name="City" maxlength="20" id="city" />(max 20 characters a-z and A-Z)</td>
			</tr>
	 
			<tr>
				<td>PIN CODE</td>
				<td><input type="text" name="Pin_Code" maxlength="6" id="pincode" />(6 digit number)</td>
			</tr>
	 
			<tr>
				<td>STATE</td>
                                <td><input type="text" name="State" maxlength="20" id="state" />(max 20 characters a-z and A-Z)</td>
			</tr>
	 
			<tr>
				<td>COUNTRY</td>
                                <td>
                                    <select name="Country" id="country">
                                        <option value=""> Please Select </option>
                                        <option value="United States"> United States </option>
                                        <option value="Afghanistan"> Afghanistan </option>
                                        <option value="Albania"> Albania </option>
                                        <option value="Algeria"> Algeria </option>
                                        <option value="American Samoa"> American Samoa </option>
                                        <option value="Andorra"> Andorra </option>
                                        <option value="Angola"> Angola </option>
                                        <option value="Anguilla"> Anguilla </option>
                                        <option value="Antigua and Barbuda"> Antigua and Barbuda </option>
                                        <option value="Argentina"> Argentina </option>
                                        <option value="Armenia"> Armenia </option>
                                        <option value="Aruba"> Aruba </option>
                                        <option value="Australia"> Australia </option>
                                        <option value="Austria"> Austria </option>
                                        <option value="Azerbaijan"> Azerbaijan </option>
                                        <option value="The Bahamas"> The Bahamas </option>
                                        <option value="Bahrain"> Bahrain </option>
                                        <option value="Bangladesh"> Bangladesh </option>
                                        <option value="Barbados"> Barbados </option>
                                        <option value="Belarus"> Belarus </option>
                                        <option value="Belgium"> Belgium </option>
                                        <option value="Belize"> Belize </option>
                                        <option value="Benin"> Benin </option>
                                        <option value="Bermuda"> Bermuda </option>
                                        <option value="Bhutan"> Bhutan </option>
                                        <option value="Bolivia"> Bolivia </option>
                                        <option value="Bosnia and Herzegovina"> Bosnia and Herzegovina </option>
                                        <option value="Botswana"> Botswana </option>
                                        <option value="Brazil"> Brazil </option>
                                        <option value="Brunei"> Brunei </option>
                                        <option value="Bulgaria"> Bulgaria </option>
                                        <option value="Burkina Faso"> Burkina Faso </option>
                                        <option value="Burundi"> Burundi </option>
                                        <option value="Cambodia"> Cambodia </option>
                                        <option value="Cameroon"> Cameroon </option>
                                        <option value="Canada"> Canada </option>
                                        <option value="Cape Verde"> Cape Verde </option>
                                        <option value="Cayman Islands"> Cayman Islands </option>
                                        <option value="Central African Republic"> Central African Republic </option>
                                        <option value="Chad"> Chad </option>
                                        <option value="Chile"> Chile </option>
                                        <option value="China"> China </option>
                                        <option value="Christmas Island"> Christmas Island </option>
                                        <option value="Cocos (Keeling) Islands"> Cocos (Keeling) Islands </option>
                                        <option value="Colombia"> Colombia </option>
                                        <option value="Comoros"> Comoros </option>
                                        <option value="Congo"> Congo </option>
                                        <option value="Cook Islands"> Cook Islands </option>
                                        <option value="Costa Rica"> Costa Rica </option>
                                        <option value="Cote d&#x27;Ivoire"> Cote d&#x27;Ivoire </option>
                                        <option value="Croatia"> Croatia </option>
                                        <option value="Cuba"> Cuba </option>
                                        <option value="Cyprus"> Cyprus </option>
                                        <option value="Czech Republic"> Czech Republic </option>
                                        <option value="Democratic Republic of the Congo"> Democratic Republic of the Congo </option>
                                        <option value="Denmark"> Denmark </option>
                                        <option value="Djibouti"> Djibouti </option>
                                        <option value="Dominica"> Dominica </option>
                                        <option value="Dominican Republic"> Dominican Republic </option>
                                        <option value="Ecuador"> Ecuador </option>
                                        <option value="Egypt"> Egypt </option>
                                        <option value="El Salvador"> El Salvador </option>
                                        <option value="Equatorial Guinea"> Equatorial Guinea </option>
                                        <option value="Eritrea"> Eritrea </option>
                                        <option value="Estonia"> Estonia </option>
                                        <option value="Ethiopia"> Ethiopia </option>
                                        <option value="Falkland Islands"> Falkland Islands </option>
                                        <option value="Faroe Islands"> Faroe Islands </option>
                                        <option value="Fiji"> Fiji </option>
                                        <option value="Finland"> Finland </option>
                                        <option value="France"> France </option>
                                        <option value="French Polynesia"> French Polynesia </option>
                                        <option value="Gabon"> Gabon </option>
                                        <option value="The Gambia"> The Gambia </option>
                                        <option value="Georgia"> Georgia </option>
                                        <option value="Germany"> Germany </option>
                                        <option value="Ghana"> Ghana </option>
                                        <option value="Gibraltar"> Gibraltar </option>
                                        <option value="Greece"> Greece </option>
                                        <option value="Greenland"> Greenland </option>
                                        <option value="Grenada"> Grenada </option>
                                        <option value="Guadeloupe"> Guadeloupe </option>
                                        <option value="Guam"> Guam </option>
                                        <option value="Guatemala"> Guatemala </option>
                                        <option value="Guernsey"> Guernsey </option>
                                        <option value="Guinea"> Guinea </option>
                                        <option value="Guinea-Bissau"> Guinea-Bissau </option>
                                        <option value="Guyana"> Guyana </option>
                                        <option value="Haiti"> Haiti </option>
                                        <option value="Honduras"> Honduras </option>
                                        <option value="Hong Kong"> Hong Kong </option>
                                        <option value="Hungary"> Hungary </option>
                                        <option value="Iceland"> Iceland </option>
                                        <option value="India"> India </option>
                                        <option value="Indonesia"> Indonesia </option>
                                        <option value="Iran"> Iran </option>
                                        <option value="Iraq"> Iraq </option>
                                        <option value="Ireland"> Ireland </option>
                                        <option value="Israel"> Israel </option>
                                        <option value="Italy"> Italy </option>
                                        <option value="Jamaica"> Jamaica </option>
                                        <option value="Japan"> Japan </option>
                                        <option value="Jersey"> Jersey </option>
                                        <option value="Jordan"> Jordan </option>
                                        <option value="Kazakhstan"> Kazakhstan </option>
                                        <option value="Kenya"> Kenya </option>
                                        <option value="Kiribati"> Kiribati </option>
                                        <option value="North Korea"> North Korea </option>
                                        <option value="South Korea"> South Korea </option>
                                        <option value="Kosovo"> Kosovo </option>
                                        <option value="Kuwait"> Kuwait </option>
                                        <option value="Kyrgyzstan"> Kyrgyzstan </option>
                                        <option value="Laos"> Laos </option>
                                        <option value="Latvia"> Latvia </option>
                                        <option value="Lebanon"> Lebanon </option>
                                        <option value="Lesotho"> Lesotho </option>
                                        <option value="Liberia"> Liberia </option>
                                        <option value="Libya"> Libya </option>
                                        <option value="Liechtenstein"> Liechtenstein </option>
                                        <option value="Lithuania"> Lithuania </option>
                                        <option value="Luxembourg"> Luxembourg </option>
                                        <option value="Macau"> Macau </option>
                                        <option value="Macedonia"> Macedonia </option>
                                        <option value="Madagascar"> Madagascar </option>
                                        <option value="Malawi"> Malawi </option>
                                        <option value="Malaysia"> Malaysia </option>
                                        <option value="Maldives"> Maldives </option>
                                        <option value="Mali"> Mali </option>
                                        <option value="Malta"> Malta </option>
                                        <option value="Marshall Islands"> Marshall Islands </option>
                                        <option value="Martinique"> Martinique </option>
                                        <option value="Mauritania"> Mauritania </option>
                                        <option value="Mauritius"> Mauritius </option>
                                        <option value="Mayotte"> Mayotte </option>
                                        <option value="Mexico"> Mexico </option>
                                        <option value="Micronesia"> Micronesia </option>
                                        <option value="Moldova"> Moldova </option>
                                        <option value="Monaco"> Monaco </option>
                                        <option value="Mongolia"> Mongolia </option>
                                        <option value="Montenegro"> Montenegro </option>
                                        <option value="Montserrat"> Montserrat </option>
                                        <option value="Morocco"> Morocco </option>
                                        <option value="Mozambique"> Mozambique </option>
                                        <option value="Myanmar"> Myanmar </option>
                                        <option value="Nagorno-Karabakh"> Nagorno-Karabakh </option>
                                        <option value="Namibia"> Namibia </option>
                                        <option value="Nauru"> Nauru </option>
                                        <option value="Nepal"> Nepal </option>
                                        <option value="Netherlands"> Netherlands </option>
                                        <option value="Netherlands Antilles"> Netherlands Antilles </option>
                                        <option value="New Caledonia"> New Caledonia </option>
                                        <option value="New Zealand"> New Zealand </option>
                                        <option value="Nicaragua"> Nicaragua </option>
                                        <option value="Niger"> Niger </option>
                                        <option value="Nigeria"> Nigeria </option>
                                        <option value="Niue"> Niue </option>
                                        <option value="Norfolk Island"> Norfolk Island </option>
                                        <option value="Turkish Republic of Northern Cyprus"> Turkish Republic of Northern Cyprus </option>
                                        <option value="Northern Mariana"> Northern Mariana </option>
                                        <option value="Norway"> Norway </option>
                                        <option value="Oman"> Oman </option>
                                        <option value="Pakistan"> Pakistan </option>
                                        <option value="Palau"> Palau </option>
                                        <option value="Palestine"> Palestine </option>
                                        <option value="Panama"> Panama </option>
                                        <option value="Papua New Guinea"> Papua New Guinea </option>
                                        <option value="Paraguay"> Paraguay </option>
                                        <option value="Peru"> Peru </option>
                                        <option value="Philippines"> Philippines </option>
                                        <option value="Pitcairn Islands"> Pitcairn Islands </option>
                                        <option value="Poland"> Poland </option>
                                        <option value="Portugal"> Portugal </option>
                                        <option value="Puerto Rico"> Puerto Rico </option>
                                        <option value="Qatar"> Qatar </option>
                                        <option value="Republic of the Congo"> Republic of the Congo </option>
                                        <option value="Romania"> Romania </option>
                                        <option value="Russia"> Russia </option>
                                        <option value="Rwanda"> Rwanda </option>
                                        <option value="Saint Barthelemy"> Saint Barthelemy </option>
                                        <option value="Saint Helena"> Saint Helena </option>
                                        <option value="Saint Kitts and Nevis"> Saint Kitts and Nevis </option>
                                        <option value="Saint Lucia"> Saint Lucia </option>
                                        <option value="Saint Martin"> Saint Martin </option>
                                        <option value="Saint Pierre and Miquelon"> Saint Pierre and Miquelon </option>
                                        <option value="Saint Vincent and the Grenadines"> Saint Vincent and the Grenadines </option>
                                        <option value="Samoa"> Samoa </option>
                                        <option value="San Marino"> San Marino </option>
                                        <option value="Sao Tome and Principe"> Sao Tome and Principe </option>
                                        <option value="Saudi Arabia"> Saudi Arabia </option>
                                        <option value="Senegal"> Senegal </option>
                                        <option value="Serbia"> Serbia </option>
                                        <option value="Seychelles"> Seychelles </option>
                                        <option value="Sierra Leone"> Sierra Leone </option>
                                        <option value="Singapore"> Singapore </option>
                                        <option value="Slovakia"> Slovakia </option>
                                        <option value="Slovenia"> Slovenia </option>
                                        <option value="Solomon Islands"> Solomon Islands </option>
                                        <option value="Somalia"> Somalia </option>
                                        <option value="Somaliland"> Somaliland </option>
                                        <option value="South Africa"> South Africa </option>
                                        <option value="South Ossetia"> South Ossetia </option>
                                        <option value="South Sudan"> South Sudan </option>
                                        <option value="Spain"> Spain </option>
                                        <option value="Sri Lanka"> Sri Lanka </option>
                                        <option value="Sudan"> Sudan </option>
                                        <option value="Suriname"> Suriname </option>
                                        <option value="Svalbard"> Svalbard </option>
                                        <option value="Swaziland"> Swaziland </option>
                                        <option value="Sweden"> Sweden </option>
                                        <option value="Switzerland"> Switzerland </option>
                                        <option value="Syria"> Syria </option>
                                        <option value="Taiwan"> Taiwan </option>
                                        <option value="Tajikistan"> Tajikistan </option>
                                        <option value="Tanzania"> Tanzania </option>
                                        <option value="Thailand"> Thailand </option>
                                        <option value="Timor-Leste"> Timor-Leste </option>
                                        <option value="Togo"> Togo </option>
                                        <option value="Tokelau"> Tokelau </option>
                                        <option value="Tonga"> Tonga </option>
                                        <option value="Transnistria Pridnestrovie"> Transnistria Pridnestrovie </option>
                                        <option value="Trinidad and Tobago"> Trinidad and Tobago </option>
                                        <option value="Tristan da Cunha"> Tristan da Cunha </option>
                                        <option value="Tunisia"> Tunisia </option>
                                        <option value="Turkey"> Turkey </option>
                                        <option value="Turkmenistan"> Turkmenistan </option>
                                        <option value="Turks and Caicos Islands"> Turks and Caicos Islands </option>
                                        <option value="Tuvalu"> Tuvalu </option>
                                        <option value="Uganda"> Uganda </option>
                                        <option value="Ukraine"> Ukraine </option>
                                        <option value="United Arab Emirates"> United Arab Emirates </option>
                                        <option value="United Kingdom"> United Kingdom </option>
                                        <option value="Uruguay"> Uruguay </option>
                                        <option value="Uzbekistan"> Uzbekistan </option>
                                        <option value="Vanuatu"> Vanuatu </option>
                                        <option value="Vatican City"> Vatican City </option>
                                        <option value="Venezuela"> Venezuela </option>
                                        <option value="Vietnam"> Vietnam </option>
                                        <option value="British Virgin Islands"> British Virgin Islands </option>
                                        <option value="Isle of Man"> Isle of Man </option>
                                        <option value="US Virgin Islands"> US Virgin Islands </option>
                                        <option value="Wallis and Futuna"> Wallis and Futuna </option>
                                        <option value="Western Sahara"> Western Sahara </option>
                                        <option value="Yemen"> Yemen </option>
                                        <option value="Zambia"> Zambia </option>
                                        <option value="Zimbabwe"> Zimbabwe </option>
                                        <option value="other"> Other </option>
                                    </select>
                                </td>
			</tr>
	 
			<tr>
				<td>QUALIFICATION <br /><br /><br /><br /><br /><br /><br /></td>
				 
				<td>
                                    <table class="inner" cellpadding="10">
					 
                                        <tr>
							<td><b>SNO.</b></td>
							<td><b>Examination</b></td>
							<td><b>UPLOAD MARKSHEET</b></td>
						</tr>
						 
						<tr>
							<td>1</td>
							<td>Class X</td>
                                                        <td><input type="file" name="10marksheet" id="tenth" /></td>
						</tr>
						 
						<tr>
							<td>2</td>
							<td>Class XII</td>
                                                        <td><input type="file" name="12marksheet" id="twelvth" /></td>
						</tr>
						 
						<tr>
							<td>3</td>
							<td>Graduation</td>
                                                        <td><input type="file" name="gradmarksheet" id="grad" /></td>
						</tr>
						 
					</table>
	 
				</td>

			</tr>
	 
			<tr>
				<td>COURSE<br />APPLIED FOR</td>
				<td>
                                    <input type="radio" name="Course" value="BBA" id="course">
					BBA
					<input type="radio" name="Course" value="MBA" id="course">
					MBA
					<input type="radio" name="Course" value="B.Tech(CSE)" id="course">
					B.Tech(CSE)
					<input type="radio" name="Course" value="B.Tech(IT)" id="course">
					B.Tech(IT)
					<input type="radio" name="Course" value="B.Tech(ECE)" id="course">
					B.Tech(ECE)
					<input type="radio" name="Course" value="B.Tech(EEE)" id="course">
					B.Tech(EEE)
				</td>
			</tr>
	 
			<tr>
				<td colspan="2" align="center">
                                    <input type="submit" value="Submit" onclick="return check();">
                                    <input type="reset" value="Reset">
				</td>
			</tr>
		</table>
 
	</form>
 
</body>
</html>