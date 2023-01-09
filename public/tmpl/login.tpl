{include file="logo.tpl"}

  <div class="login bannerContainer">
    <div class="bannerInner">
      <h3>Member login</h3>
    </div>
  </div>
  <!-- end bannerContainer -->

  <div class="loginContainer">
    <div class="loginInner">
		
		      <h3>Please enter your username and password to log in</h3>
					<div class="loginFrom">
		
		
					
					
{literal}
<script language=javascript>
function checkform() {
  if (document.mainform.username.value=='') {
    alert("Please type your username!");
    document.mainform.username.focus();
    return false;
  }
  if (document.mainform.password.value=='') {
    alert("Please type your password!");
    document.mainform.password.focus();
    return false;
  }
  return true;
}
</script>
{/literal}

{if $frm.say eq 'invalid_login'}
<h3>Login error:</h3><br><br>

Your login or password or turing image code is wrong. Please check this information.
{/if}
											
					
						<form method=post name=mainform onsubmit="return checkform()">
						<input type=hidden name=a value='do_login'>
						<input type=hidden name=follow value=''>
						<input type=hidden name=follow_id value=''>
													 
						
												
					
						<div class="form-group">
							<label>Username</label>
							<input type="text" name=username value='' >
							<div class="lgIc1"></div>
						</div>
						<div class="form-group">
							<label>Password</label>
							<input type="password" name="password">
							 <div class="lgIc2"></div>
						</div>
						{if $userinfo.validation_enabled == 1}
						<div class="form-group">
							<label><img src="{"?a=show_validation_image&`$userinfo.session_name`=`$userinfo.session_id`&rand=`$userinfo.rand`"|encurl}"></label>
							<input type="text" name=validation_number value='' >
							<div class="lgIc1"></div>
						</div>{/if}
					
						 <div class="lgAction">
							<button type="submit" class="login">Login</button>
							<a href="?a=forgot_password" class="lostPass">Lost your password?</a>
						</div>
						
						<div class="actYet">
						  <h3>Don't have an account yet?</h3>
						  <a href="?a=signup">SIGNUP NOW FOR FREE</a>
						</div>
						
					</form>
				</div>
			</div>
		</div>


{include file="footer2.tpl"}