<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" type="text/css" href="./form.css"  />
<link rel="stylesheet" type="text/css" href="./style.css"  />
<title>CS Survey Page</title>

</head>

<%--Heading Definition --%>
<body style="background-color:#888810">
	<div class= "divH1"><h1 style="color:green" align = "center">George Mason University Survey Form</h1></div>
	<br/><br/>

<%--Initiation of form with form.css as style-sheet --%>

 <form class="w3-container w3-card-4" autocomplete="on" style="max-width:1000px; margin:auto">
   <label for="name" class="w3-text-green" >Name:</label> <input class="w3-input w3-border" type="text"  name="name" placeholder="required"
   autocomplete="on" required autofocus>
  <br/>
  <label for="address" class="w3-text-yellow">Street Address:</label>  <input class="w3-input w3-border" type="text" name="address"
  autocomplete="on" placeholder="required" required>
  <br/>
  <label for="city" class="w3-text-green">City:</label>  <input class="w3-input w3-border" type="text" name="city"  placeholder="required"
  autocomplete="on"  required>
  <br/>
  <label for="state" class="w3-text-yellow">State:</label>  <input class="w3-input w3-border"  type="text" name="state"  placeholder="required"
  autocomplete="on"  required>
  <br/>
  <label for="zip" class="w3-text-green">Zip:</label>  <input class="w3-input w3-border"  type="number" name="zip"  placeholder="required"
  autocomplete="on"  required>
  <br/>
  <label for="name" class="w3-text-yellow">Telephone Numer:</label> <input class="w3-input w3-border"  type="text"  name="number"  pattern="[0-9]{3}-[0-9]{3}-[0-9]{4}" placeholder="required" autocomplete="on"  required>
  <small>Format: 123-456-7890</small>
  <br/>
  <label for="email" class="w3-text-green">Email:</label>  <input  class="w3-input w3-border" type="email"  placeholder="username@domain.com" name="email" autocomplete="on"  required>
  <br/>
  <label for="url" class="w3-text-yellow">URL:</label>  <input class="w3-input w3-border"  type="text" placeholder="scheme://host:port/path" name="url"
  autocomplete="on" >
  <label for="raffle" class="w3-text-green">Raffle:</label>  <input class="w3-input w3-border" type="text" name="raffle"
  placeholder="comma separated 10 values" required>
  <br/>
  <label for="date" class="w3-text-green"> Date of Survey:</label>
  <input type="date" id="DOS" >
  <br/>
  <br/>

<%--CheckBox --%>
  <p style="color:yellow">Things liked by Students</p>
  <input class="w3-check" type="checkbox" name="students">
  <label for="vehicle1" style="color:yellow"> Students</label>
  <input class="w3-check" type="checkbox" name="location">
  <label for="vehicle1" style="color:yellow"> Location</label>
  <input class="w3-check" type="checkbox" name="atmosphere">
  <label for="vehicle1" style="color:yellow"> Atmosphere</label>
  <input class="w3-check" type="checkbox" name="dorm">
  <label for="vehicle1" style="color:yellow"> DORM</label>
  <input class="w3-check" type="checkbox" name="sports">
  <label for="vehicle1" style="color:yellow"> Sports</label>


<%--Radio Buttons --%>
  <p style="color:green">What makes interest in GMU:</p>
  <input class="w3-radio" type="radio"  name="friend" >
  <label for="friend" style="color:green">Friend</label>
  <input class="w3-radio" type="radio"  name="television" >
  <label for="television" style="color:green">Television</label>
  <input class="w3-radio" type="radio"  name="internet" >
  <label for="internet" style="color:green">Internet</label>
  <input class="w3-radio" type="radio"  name="other" >
  <label for="other" style="color:green">Other</label>

<%--Provison for additional comments --%>

<p><label for="w3review" style="color:yellow">Additional Comments:</label></p>
  <textarea id="w3review" name="w3review" rows="4" cols="50" style="color:green">Provide your additional comments about school here.</textarea>
  </br></br>
  <label for="month" style="color:yellow">Choose month for the graduation:</label>
  <input list="month" name="month">
  <datalist id="month">
    <option value="January">
    <option value="February">
    <option value="March">
    <option value="April">
    <option value="May">
    <option value="June">
    <option value="July">
    <option value="August">
	<option value="September">
    <option value="October">
    <option value="November">
    <option value="December">
  </datalist>
  <label for="year" style="color:yellow">Year:</label> <input type="text"  name="year">
  </br></br>

  <label for="recommendation" style="color:green">How much do you recommend GMU:</label>
  <input list="recommendation" name="recommendation">
  <datalist id="recommendation">
    <option value="Very Likely">
    <option value="Likely">
    <option value="Unlikely">
    </datalist>
  </br></br>
  <p><button class="w3-btn w3-blue" style="width:12%">Submit</button>

  <button class="w3-btn w3-Red" style="width:12%">Cancel</button></p>
</form>
</body>
</html>
