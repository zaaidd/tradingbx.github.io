{include file="logo.tpl"}


	<div class="invest bannerContainer">
    <div class="bannerInner">
      <div class="banner_top">
        <h3>Contact Us</h3>
        <div class="bt-bb">
          <p>Have you faced the problem that you can not solve on your own? Do not hesitate to contact our support service professionals through the feedback form or email! Any of your inquiry will be processed as soon as possible! We will be sure to respond within 24 hours.</p>
          <a href="?a=signup">Signup Now</a>
          <div class="clearfix"></div>
        </div>
      </div>
    </div>
  </div>
  <!-- end bannerContainer -->


  <div class="technologyContainer">
    <div class="technologyInner">	


<div class="support-page">
	
	<div class="support-right">
	

	
	
	<div class="contacts-container">
		
		
			<div class="contacts contact2">
			<div class="contacts-details">
				<p class="bottom">
				Registered Office Address: <br/>RM19 1QG, 14 COMET CLOSE, PURFLEET, UNITED KINGDOM
				</p>
			</div>
		</div>	

		


		<div class="contacts contact3">
			<div class="contacts-details">
				<p>Contact Phone Number:</p>
				<p class="bottom">+449472383167</p>
			</div>
		</div>		
		
		
			
		<div class="contacts contact1">
			<div class="contacts-details">
				<p>Our E-mail:</p>
				<p class="bottom"><a href="mailto:admin@{$settings.site_name}">admin@{$settings.site_name}</a></p>
			</div>
		</div>	


	
		

	</div>		
	

</div>	

	
	
	
	

<div class="support-left">



<div class="form-container" style="width:100%;">
	



<div class="form-content">

{if $say eq 'send'}
Message has been successfully sent. We will back to you in next 24 hours. Thank you.<br><br>
{else}

<script language=javascript>
{if $userinfo.logged == 1}
{literal}
function checkform() { 
  if (document.mainform.message.value == '') {
    alert("Please type your message!");
    document.mainform.message.focus();
    return false;
  }
  return true;
}
{/literal}
{else}
{literal}
function checkform() {
  if (document.mainform.name.value == '') {
    alert("Please type your full name!");
    document.mainform.name.focus();
    return false;
  }
  if (document.mainform.email.value == '') {
    alert("Please enter your e-mail address!");
    document.mainform.email.focus();
    return false;
  }
  if (document.mainform.message.value == '') {
    alert("Please type your message!");
    document.mainform.message.focus();
    return false;
  }
  return true;
}
{/literal}
{/if}
</script>
<form method=post name=mainform onsubmit="return checkform()">
<input type=hidden name=a value=support>
<input type=hidden name=action value=send>

 
<table cellspacing=0 cellpadding=2 border=0>
<tr>
 <td>
	 <label>Your Name:</label>
<input type="text" name="name" value="" size=30 class=inpts>
</td>
<td rowspan="2">
	 <label>Your Message:</label>
	 <textarea name=message class=inpts cols=45 rows=4></textarea>
	</td>
</tr>
<tr>
	<td>

	<label>Your Email:</label>
		<input type="text" name="email" value="" size=30 class=inpts>
		</td>
</tr>

<tr>
 <td colspan="2">













<input type=submit value="Send" class=sbmt></td>
</tr></table>

</form>
{/if}

</div>

</div>	


<iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d2484.5311366562883!2d0.23456738449633793!3d51.48512002015331!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x47d8b0584e73d071%3A0x9bc882c372a55b0e!2zMTQgQ29tZXQgQ2wsIFB1cmZsZWV0IFJNMTkgMVFHLCDXkdeo15nXmNeg15nXlA!5e0!3m2!1siw!2sil!4v1479719107197" width="100%" height="250" frameborder="0" style="border:0" allowfullscreen></iframe>









</div>




</div>


</div>

</div>

{include file="footer2.tpl"}