<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <title>Job Eligibility Checker</title>
  <style>
    body {
      background-color: #f0f4ff;
      font-family: 'Poppins', sans-serif;
      display: flex;
      justify-content: center;
      align-items: center;
      height: 100vh;
      margin: 0;
    }

    #wrapper {
      background-color: #ffffff;
      padding: 30px;
      border-radius: 10px;
      box-shadow: 0 0 10px rgba(0,0,0,0.1);
      text-align: center;
      width: 350px;
    }

    h2 {
      color: #003366;
      margin-bottom: 20px;
    }

    label {
      display: block;
      margin: 10px 0;
      font-size: 16px;
    }

    button {
      background-color: #003366;
      color: white;
      padding: 10px 20px;
      font-size: 16px;
      border: none;
      border-radius: 5px;
      cursor: pointer;
      margin-top: 10px;
    }

    #result {
      margin-top: 20px;
      font-size: 18px;
      font-weight: bold;
    }
  </style>
</head>
<body>

  <div id="wrapper">
    <h2>Job Eligibility Checker</h2>

    <label><input type="radio" name="qualification" value="Illiterate"> Illiterate</label>
    <label><input type="radio" name="qualification" value="High School"> High School</label>
    <label><input type="radio" name="qualification" value="UG"> UG</label>
    <label><input type="radio" name="qualification" value="PG"> PG</label>

    <button onclick="checkEligibility()">Check Eligibility</button>

    <div id="result"></div>
  </div>

  <script>
    function checkEligibility() {
      const qualifications = document.getElementsByName("qualification");
      let selectedValue = null;

      for (let q of qualifications) {
        if (q.checked) {
          selectedValue = q.value;
          break;
        }
      }

      const result = document.getElementById("result");

      if (!selectedValue) {
        result.textContent = "? Please select a qualification.";
        result.style.color = "red";
        return;
      }

      switch (selectedValue) {
        case "High School":
        case "UG":
          result.textContent = "? You are eligible for the job.";
          result.style.color = "green";
          break;
        case "Illiterate":
        case "PG":
          result.textContent = "? You are not eligible for the job.";
          result.style.color = "red";
          break;
        default:
          result.textContent = "? Invalid selection.";
          result.style.color = "red";
      }
    }
  </script>

</body>
</html>
