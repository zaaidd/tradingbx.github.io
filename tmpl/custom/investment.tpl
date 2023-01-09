{include file="logo.tpl"}


	<div class="invest bannerContainer">
    <div class="bannerInner">
      <div class="banner_top">
        <h3>Investment offer</h3>
        <div class="bt-bb">
          <p>We have one main goal: to provide our customers with a unique platform for their cryptocurrency investment. This is why we have employed the use of a cutting-edge platform with extensive infrastructure.</p>
          <a href="?a=signup">signup now</a>
          <div class="clearfix"></div>
        </div>
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
        <input type="number" name="amount" value="0.0100000" required min="0.01" step="0.00000001" id="money" onfocus="calcthis();" oninput="calcthis();" onblur="calcthis();" class="mat-input">
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
  <div class="investmentContainer">
    <div class="investmentInner">
      <p>You can withdraw your initial deposit as soon as 24 hours have passed from the time you made it, and as little as 5% fee will be applied. Minimum withdrawal amount is 0.0001 BTC. All withdrawals are instant. Our interest rate is 0.15% hourly for any deposit amount starting from 0.01 BTC. Once you make a deposit, an interest will be added to your account beginning from the next hour. You can have as many deposits as you deem fit.</p>
    </div>
  </div> <!-- end investmentContainer -->
  
{include file="sta.tpl"}
  <!-- end statisticContainer -->

  {include file="footer2.tpl"}