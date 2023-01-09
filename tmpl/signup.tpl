{include file="logo.tpl"}

	


 <div class="login bannerContainer">
    <div class="bannerInner">
      <h3>CREATE YOUR ACCOUNT</h3>
    </div>
  </div>
  <!-- end bannerContainer -->
  
  
    <div class="loginContainer">
    <div class="loginInner">
      <h3>Please complete the following form to signup</h3>
		<div class="registerCtn loginFrom">

 
{if $deny_registration}
 We are closed for new registrations now.
{elseif $settings.use_referal_program && $settings.force_upline && !$referer && !$settings.get_rand_ref}
 You  do not have a upline. Our system require a upline for each user.
{else}
 {literal}

 <script language=javascript>
 function checkform() {
  if (document.regform.fullname.value == '') {
    alert("Please enter your full name!");
    document.regform.fullname.focus();
    return false;
  }
 {/literal}
 {if $settings.use_user_location == 1}
 {literal}
  if (document.regform.address.value == '') {
    alert("Please enter your address!");
    document.regform.address.focus();
    return false;
  }
  if (document.regform.city.value == '') {
    alert("Please enter your city!");
    document.regform.city.focus();
    return false;
  }
  if (document.regform.state.value == '') {
    alert("Please enter your state!");
    document.regform.state.focus();
    return false;
  }
  if (document.regform.zip.value == '') {
    alert("Please enter your ZIP!");
    document.regform.zip.focus();
    return false;
  }
  if (document.regform.country.options[document.regform.country.selectedIndex].text == '--SELECT--') {
    alert("Please choose your country!");
    document.regform.country.focus();
    return false;
  }
 {/literal}
 {/if}
 {literal}
  if (document.regform.username.value == '') {
    alert("Please enter your username!");
    document.regform.username.focus();
    return false;
  }
  if (document.regform.password.value == '') {
    alert("Please enter your password!");
    document.regform.password.focus();
    return false;
  }
  if (document.regform.password.value != document.regform.password2.value) {
    alert("Please check your password!");
    document.regform.password2.focus();
    return false;
  }
 {/literal}
 {if $settings.use_transaction_code}
 {literal}
  if (document.regform.transaction_code.value == '') {
    alert("Please enter your transaction code!");
    document.regform.transaction_code.focus();
    return false;
  }
  if (document.regform.transaction_code.value != document.regform.transaction_code2.value) {
    alert("Please check your transaction code!");
    document.regform.transaction_code2.focus();
    return false;
  }
 {/literal}
 {/if}
 {literal}
  if (document.regform.email.value == '') {
    alert("Please enter your e-mail address!");
    document.regform.email.focus();
    return false;
  }
  if (document.regform.email.value != document.regform.email1.value) {
    alert("Please retupe your e-mail!");
    document.regform.email.focus();
    return false;
  }
  if (document.regform.agree.checked == false) {
    alert("You have to agree with the Terms and Conditions!");
    return false;
  }
  return true;
 }

 function IsNumeric(sText) {
  var ValidChars = "0123456789";
  var IsNumber=true;
  var Char;
  if (sText == '') return false;
  for (i = 0; i < sText.length && IsNumber == true; i++) { 
    Char = sText.charAt(i); 
    if (ValidChars.indexOf(Char) == -1) {
      IsNumber = false;
    }
  }
  return IsNumber;
 }
 </script>
 {/literal}
 
 {if $errors}
  <ul style="color:red">
  {section name=e loop=$errors} 
   {if $errors[e] eq 'full_name'}
    <li>Please enter your full name!
   {/if}
   {if $errors[e] eq 'address'}
    <li>Please enter your address!
   {/if}
   {if $errors[e] eq 'city'}
    <li>Please enter your city!
   {/if}
   {if $errors[e] eq 'state'}
    <li>Please enter your state!
   {/if}
   {if $errors[e] eq 'zip'}
    <li>Please enter your zip!
   {/if}
   {if $errors[e] eq 'country'}
    <li>Please choose your country!
   {/if}
   {if $errors[e] eq 'username'}
    <li>Please enter your username!
   {/if}
   {if $errors[e] eq 'username_exists'}
    <li>Sorry, such user already exists! Please try another username. 
   {/if}
   {if $errors[e] eq 'email_exists'}
    <li>Sorry, such email already exists! Please try another email. 
   {/if} 
   {if $errors[e] eq 'password'} 
    <li>Please enter a password!
   {/if}
   {if $errors[e] eq 'password_confirm'}
    <li>Please check your password!
   {/if}
   {if $errors[e] eq 'password_too_small'}
    <li>The password you provided is too small, please enter at least {$settings.min_user_password_length} characters!
   {/if} 
   {if $errors[e] eq 'transaction_code'} 
    <li>Please enter the Transaction Code!
   {/if} 
   {if $errors[e] eq 'transaction_code_confirm'} 
    <li>Please check your Transaction Code!
   {/if}
   {if $errors[e] eq 'transaction_code_too_small'}
    <li>The Transaction Code you provided is too small, please enter at least {$settings.min_user_password_length} characters!
   {/if}
   {if $errors[e] eq 'transaction_code_vs_password'} 
    <li>The Transaction Code should differ from the Password!
   {/if}
   {if $errors[e] eq 'egold'} 
    <li>Please enter your e-gold account number!
   {/if}
   {if $errors[e] eq 'email'} 
    <li>Please enter your e-mail!
   {/if}
   {if $errors[e] eq 'agree'}
    <li>You have to agree with the Terms and Conditions!
   {/if}
   {if $errors[e] eq 'turing_image'}
    <li>Enter the verification code as it is shown in the corresponding box.
   {/if} 
   {if $errors[e] eq 'no_upline'}
    <li>The system requires an upline to register. {if $settings.get_rand_ref}You have to be agreed to random one or found a referral link in the net.{/if}
   {/if} 
   {if $errors[e] eq 'ip_exists_in_database'}
    <li>Your IP already exists in our database. Sorry, but registration impossible.
   {/if}

   <br> 
  {/section}
  </ul>
 {/if} 
  
	<form method=post onsubmit="return checkform()" name="regform">
					<input type=hidden name=a value="signup">
					<input type=hidden name=action value="signup">

					<div class="form-group">
						<label>Fullname</label>
						<input type=text name=fullname value="" placeholder="Full name">
						<div class="lgIc1"></div>
					</div>
					<div class="form-group">
						 <label>Username</label>
						<input type=text name=username value="" placeholder="Username">
						<div class="lgIc3"></div>
					</div>
					<div class="form-group">
						<label>Password</label>
						<input type=password name=password value="" placeholder="Password">
						<div class="lgIc5"></div>
					</div>
					<div class="form-group">
						<label>Repeat Password</label>
						<input type=password name=password2 value="" placeholder="Retype Password">
						<div class="lgIc5"></div>
					</div>
					<div class="form-group">
						<label>E-mail</label>
						<input type=text name=email value="" placeholder="E-mail Address">
						 <div class="lgIc4"></div>
					</div>
					<div class="form-group">
						<label>Repeat E-mail</label>
						<input type=text name=email1 value="" placeholder="Retype E-mail">
						 <div class="lgIc4"></div>
					</div>
					
					{foreach from=$pay_accounts item=ps}
					<div class="form-group">
												<label>{$ps.name} Account</label>
						<input type=text name=pay_account[{$ps.id}] value="{$ps.account|escape:html}" placeholder="{$ps.name} Account" >
						<div class="lgIc6"></div>
																	
						
						
						
					</div>
					{/foreach}
{foreach item=p from=$mpay_accounts}
{foreach item=ps from=$p.accounts}

<div class="form-group">
												<label>{$p.name} {$ps.name}</label>
						<input type=text name="pay_account[{$p.id}][{$ps.name|escape:html}]" value="{$ps.value|escape:html}" placeholder="{$p.name} {$ps.name}" >
						<div class="lgIc6"></div>
																	
						
						
						
					</div>{/foreach}
{/foreach}
					
					<div class="form-group form-group1">
						<label></label>
						<input type=checkbox class="checkbox" name=agree value=1 {if $frm.agree}checked{/if} >
						<p>I agree to <a href="?a=rules">Terms and Services</a></p>
					  </div>
								
					
					<div class="form-group form-group1">
					<table>
{if $settings.use_referal_program}
{if $referer}
<tr>
 <td>Your Upline:</td>
 <td>
 {if $referer}
 {*<a href="mailto:{$referer.email}">*}{$referer.name}{*</a>*} ({$referer.username}) {else}N/A{/if}</td>
</tr>
{else}
{if $settings.force_upline}
 {if $settings.get_rand_ref}
  <tr>
   <td colspan=2>
    You do not have an upline. Our system requires an upline for each user. You'll have to agree to get a random one or find a referral link on the net.
    <input type=checkbox name="rand_ref" value=1>
   </td>
  </tr>
 {else}
  <tr>
   <td colspan=2>
    You do not have an upline. Our system requires an upline for each user.
   </td>
  </tr>
 {/if}
{/if}
{/if}
{/if}</table>																																														
					</div>
				
						<div class="lgAction">
							<button type="submit" class="login signup">Signup</button>
						</div>
				</form> {/if}
							</div>
		</div>
	</div> <!-- end resContainer -->
{include file="footer2.tpl"}