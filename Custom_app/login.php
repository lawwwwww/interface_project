<!--remove session variable-->
<?php include 'dodo.php'?>
<div data-ng-init="remses()">
    
   <div class="row">
        <div class="col-md-12">
            <h3>Login Form</h3>
        </div>
    </div>
<form id="form" name="myForm" method="post" action="tete.php" data-ng-submit="submit()" novalidate="novalidate">
<fieldset>
	<div class="row">
		<div class="col-md-3">
			<img id="avatarlogin" src="img/avatarlogin.png" alt="avatar" class="avatar" height="290" width="260"/><br/><br/>
	</div>

	
		<div class="col-md-9">
			<div class="form-group">
				<label id="loginl" for="name">Name:</label>
				
				<div ng-init='myForm.namee.$valid=false'>
					<input type="text" placeholder="Write your username" name="namee" data-ng-model="user.namee" ng-minlength="3" required/>
					<div ng-if="myForm.namee.$valid==false">
					<div class="form-group has-error has-feedback">
					<label for="namee1" id="errlogin" class="col-sm-12 control-label" for="inputError">Username should contains minimum 3 characters
					</label>
					</div>
					</div>
					</div>
					
			</div>
			
			<div class="row">
				<div class="col-md-12">
					<div class="form-group">
				<label id="loginl" for="emaill">Email:</label>
		
				<div ng-init='myForm.emaill.$valid=false'>
					<input type="email" placeholder="Write your email" name="emaill" data-ng-model="user.emaill" required/>
					<div ng-if=" myForm.emaill.$valid==false">
					<div class="form-group has-error has-feedback">
					<label id="errlogin" for="emaill1" class="col-sm-12 control-label" for="inputError">Should match with email format.
					</label>
					</div>
					</div>
					</div>
					
			</div>
			
			<div class="row">
				<div class="col-md-12">
					
					<div class="form-group">
				<label id="loginl" for="phonee">Phone number:</label>
				
				<div ng-init='myForm.phonee.$valid=false'>
					<input type="text" name="phonee" placeholder="Write your phone number" data-ng-model="user.phonee" ng-pattern="/^60[\d]{8,9}$/" required/>
					<div ng-if="myForm.phonee.$valid==false">
					<div class="form-group has-error has-feedback">
					<label for="phonee1" id="errlogin" class="col-sm-12 control-label" for="inputError">Phone should have 10 or 11 numbers 
					</label>
					</div>
					</div>
					</div>
					
			</div>
					
			</div>
			</div>
			
				</div>
			</div>
			</div>
		</div>
		<br/><br/>	
<div class="row">
    <div class="col-md-12">
<button class="btn-success" id="loginsubmit" type="submit" data-ng-disabled="myForm.$invalid" data-ng-click="addlogin(user.namee,user.phonee,user.emaill)">Login</button>  <!--if form has invalid data, the button is disabled-->
                       
                        </div>
                    </div>

		
	</div>
</fieldset>
</form>
 <br/><br/>
 </div>