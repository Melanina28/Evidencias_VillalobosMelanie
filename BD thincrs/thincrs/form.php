<html>

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
</head>

<body>
    <h1>Talent</h1>
    <form method="POST" action="Poderoso.php" style="margin:30px">
        <div class="row">
        <select class="col form-control" name="lastname" id="lastname">
               
               <?php 
               $servername = "localhost";
               $database = "thincrs-core-v2";
               $username = "root";
               $password = "";
               $conn = mysqli_connect($servername, $username, $password, $database);
               if (!$conn) {
                   die("Connection failed:".mysqli_connect_error());
               }
               echo "Connected successfully";

               $consulta="SELECT id,name FROM users";
               $eje = mysqli_query($conn,$consulta) or die(mysqli_error($conn));

               
               ?>

               <?php foreach ($eje as  $valu): ?>

                   <option value="<?php echo $valu['name']?>"><?php echo $valu['name']?></option>
               

               <?php endforeach ?>
           </select>
            <div class="col">
                <input type="text" class="form-control" placeholder="id usuario" id="user_id" name ="user_id">
            </div>
        </div>
        <br>
        <div class="row">
            <div class="col">
                <input type="text" class="form-control" placeholder="city" id="city"name="city">
            </div>
            <div class="col">
                <input type="text" class="form-control" placeholder="state" id="state" name ="state">
            </div>
        </div>
        <br>
        <div class="row">
            <div class="col">
                <input type="text" class="form-control" placeholder="country" id="country" name="country">
            </div>
            <div class="col">
                <select class="col form-control" id="city_id" name="city_id">
                <option class="dropdown-item" value="1">Aguascalientes</option>
            <option class="dropdown-item" value="2">Las vegas</option>
                </select>
            </div>
        </div>
        <br>
        <div class="row" >
            <select class="col form-control" id="extrac_talent" name="extrac_talent">
            <option class="dropdown-item" value="Java">Java</option>
            <option class="dropdown-item" value="JavaScritp">JavaScript</option>
            <option class="dropdown-item" value="Movil">Movil</option>
            <select>
            <div class="col">
                <input type="number" class="form-control" placeholder="experience" name="experience" id="experience">
            </div>
        </div>
        <br>
        <div class="row">
            <select  class="col form-control" id="role_work" name="role_work">
            <option class="dropdown-item" value="Semi Senior">Semi Senior</option>
            <option class="dropdown-item" value="Junior">Senior</option>
            <option class="dropdown-item" value="Student">Student</option>
         
            <select>

            <select  class="col form-control" id="dominated_technologies" name="dominated_technologies">
            <option class="dropdown-item" value="Web Developer">Basic Developer</option>
            <option class="dropdown-item" value="Web Developer">Basic Web Developer</option>
                <option class="dropdown-item" value="Desarrollador Full Stack">Desarrollador Full Stack</option>
                <option class="dropdown-item" value="Project Manager">Medium Developer</option>

                
            </select>
        </div>
        <br>
        <div class="row">
            <select class="col" id="school_name" name="school_name">
            <option class="dropdown-item" value="Universidad Tecnologica">UTA</option>
                <option class="dropdown-item" value="Henderson">Henderson</option>
            </select>

        <select class="col" id="linkedin" name="linkedin">
        <option class="dropdown-item" value="https://mx.linkedin.com"></option>
            <option class="dropdown-item" value="https://mx.linkedin.com">https://mx.linkedin.com</option>
        </select>
        </div>
        <br>
        <div class="row">
            <div class="col">
            <select class="col" id="github" name="github">
            <option class="dropdown-item" value=" https://github.com"></option>
                <option class="dropdown-item" value=" https://github.com">Github</option>
            </select>
            </div>
            <div class="col" >
                <select class="col" id="skype" name="skype">
                <option class="dropdown-item" value="https://www.skype.com/es/"></option>
                <option class="dropdown-item" value="https://www.skype.com/es/">Skype</option>
                 </select>
                    
                 </select>
            </div>
        </div>
        <br>
        <div class="row">
            <div class="col">
                <input type="number" class="form-control" placeholder="education"  id="education" name="education">
            </div>
            <div class="col">
                <input type="number" class="form-control" placeholder="salary" id="salary" name="salary">
            </div>
        </div>
        <br>
        <div class="row">
            <div class="col">
                <input type="number" class="form-control" id="credits" name="credits" placeholder="credits">
            </div>
            <div class="col">
                <input type="number" class="form-control" id="points" name="points" placeholder="points">
            </div>
        </div>
        <br>
        <div class="row">
        <div class="col">
                <input type="number" class="form-control" id="university_id" name="university_id" placeholder="University _ID">
            </div>
            
        </div>
        <br>
        <div  class="row" >
            <select class="col form-control" id="cv" name="cv">
            <option class="dropdown-item" value="CV/mwBpTRJtKPlnMi8Xzqa4tfzcfyE7HN.pdf">CV</option>
            
            <select>
               </div>
                <button type="submit" id="agregar" class="form-control btn btn-dark">Agregar</button>
            </div>

    </form>

</body>

</html>