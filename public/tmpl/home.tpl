{include file="logo.tpl"}
	


  <div class="bannerContainer">
    <div class="bannerInner">
      <div class="banner_top">
        <h3>LEADER COMPANY OF CRYPTOCURRENCY CLOUD MINING</h3>
        <div class="bt-bb">
          <p>{$settings.site_name} is a cryptocurrency mining company established in 2016. Our team has been involved with cryptocurrencies since the inception of Bitcoin and has over 3 years of experience in the field of mining cryptocurrencies.</p>
          <a href="?a=signup">free registration</a>
          <div class="clearfix"></div>
        </div>
      </div>
      <div class="banner_bot">
        <div class="banner_bot_part banner_bot_part1">
          <h3>Hourly Interest</h3>
          <p>Our clients can enjoy their Bitcoin growing each and every hour. Once you have become an active participant, a hourly interest rate of 0.15% will be applied to your investment.</p>
        </div>
        <div class="banner_bot_part banner_bot_part2">
          <h3>constant accruals</h3>
          <p>Interest is applied to your account 7 days a week. Once it has been added to your account balance, you can either reinvest it to increase your daily profit, or you can withdraw it.</p>
        </div>
        <div class="banner_bot_part banner_bot_part3">
          <h3>5% affiliate program</h3>
          <p>Present our project to your friends, family, or any other community and enjoy the financial benefits. You don't even need an active deposit to receive affiliate commission.</p>
        </div>
        <div class="banner_bot_part banner_bot_part4">
          <h3>Secured system</h3>
          <p>Our system has the highest level of security from DDOS attacks and hackers. We use a very powerful dedicated server and Comodo SSL encryption. </p>
        </div>
        <div class="clearfix"></div>
      </div>
    </div>
  </div>
  <!-- end bannerContainer -->

  <div class="planContainer">
    <div class="planInner">
      <div class="plan_left">
        <div class="top">
          <h2> 3.60% Daily</h2>
          <h3>0.15% Hourly Forever</h3>
          <ul>
            <li>Minimum Deposit: 0.01 BTC</li>
            <li>Instant Withdrawals</li>
            <li>5% Initial Deposit Withdrawal Fee</li>
          </ul>
        </div>
        <p class="bot">Initial Deposit Withdrawal Available After 24 Hours</p>
      </div>
      <div class="plan_right">
        <label>investment
          <br> amount (BTC)</label>
        <input type="number" name="amount" value="0.0100000" required min="0.01" step="0.01" id="money" onfocus="calcthis();" oninput="calcthis();" onblur="calcthis();" class="mat-input">
        <div class="clearfix"></div>
        <ul>
          <li>Hourly Interest <span> BTC</span><span id="inpvar2">N/A</span></li>
          <li>Daily Interest <span> BTC</span><span id="inpvar3">N/A</span></li>
          <li>Weekly Interest <span> BTC</span><span id="inpvar4">N/A</span></li>
        </ul>
      </div>
      <div class="clearfix"></div>
    </div>
  </div>
  <!-- end planContainer -->

  <div class="technologyContainer">
    <div class="technologyInner">
      <div class="technology_left">
        <h3>BitCoin Cloud Mining Technology</h3>
        <p>{$settings.site_name} is a cryptocurrency investment company established in 2016. We are based in London and have in our employ investment professionals from many industries, ranging from advanced computer technology to engineering. Our investment experts are highly experienced in all cryptocurrency techniques, and they can answer whatever question you have about Bitcoin mining. As a Bitcoin mining company, we have just one goal: to provide a user-friendly investment platform that will assist our investors in making good investment decisions. </p>
        <a href="?a=cust&page=about">read more</a>
      </div>
      <div class="technology_right">
        <img src="styles/images/img-ctn.png">
        <div class="technology_right_part">
          <h3>UK company registered</h3>
          <h2>#10470342</h2>
          <p>+449472383167</p>
          <a href="certificate.pdf" target="_blank">view details</a>
        </div>
      </div>
      <div class="clearfix"></div>
    </div>
  </div>
  <!-- end technologyContainer -->


{include file="sta.tpl"}
  <!-- end statisticContainer -->


  <div class="commissionContainer">
    <div class="commissonInner">
      <div class="commissionLeft">
        <h3><span>5<span>%</span></span></h3>
        <h3>AFFILIATE  commission</h3>
        <div class="clearfix"></div>
        <p><br>Present our project to your friends, family, or any other community and enjoy the financial benefits. You don't even need an active deposit to receive affiliate commission; just share your affiliate link, which you can find in your personal account. You will receive 5% referral commission for every deposit that your referral makes from his Bitcoin wallet. You can withdraw it instantly at anytime you wish!</p>
      </div>
      <div class="commissionRight">
	  {section name=s loop=$news}
					<p><span>{$news[s].title}</span></p>
			<p>{$news[s].d}</p>
			<p>{$news[s].small_text}</p>
			<a href="?a=news#{$news[s].id}">read more</a>
			{/section}
              </div>
      <div class="clearfix"></div>
    </div>
  </div>
  <!-- end commissionContainer -->

{include file="footer2.tpl"}
	