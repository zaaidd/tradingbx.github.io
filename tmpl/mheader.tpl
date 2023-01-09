{include file="logo.tpl"}



 <div class="accBnContainer">
    <div class="accBnInner">
      <div class="accBnLeft">
        <h3>Welcome, {$userinfo.username}!</h3>
      </div>
      <div class="accBnRight">
        <p class="accDate">Join date: {$userinfo.create_account_date} </p>
        <p class="accAccess">Last Access: {$last_access}</p>
      </div>
    </div>
  </div> <!-- end accBnContainer -->
  <div class="accCtnContainer">
    <div class="accCtnInner">
		
		
	<div class="accCtn">
        <div class="accCtnLeft">
          <div class="accLeft1">
            <a class="accLeft11" href="?a=deposit">
              <h3>deposit</h3>
            </a>
            <a class="accLeft11 accLeft12" href="?a=withdraw">
              <h3>withdraw</h3>
            </a>
          </div>
        
          <div class="accLeftBar">
            <ul class="nav nav-tabs">
              <li class="accLeftAcc" ><a href="?a=account">Account Overview</a></li>
              <li  class="accLeftAcc accLeftAct"><a href="?a=deposit_list">Deposits List</a></li>
              <li class="accLeftAcc accLeftHis"><a href="?a=deposit_history">Deposits History</a></li>
   <li class="accLeftAcc accLeftHis"><a href="?a=earnings">Earnings History</a></li>  <li class="accLeftAcc accLeftHis"><a href="?a=withdraw_history">Withdrawals History</a></li>          <li class="accLeftAcc accLeftRef"><a href="?a=referals">Your Referrals</a></li>
              <li class="accLeftAcc accLeftProm"><a href="?a=referallinks">Promo Materials</a></li>
              <li class="accLeftAcc accLeftSet"><a href="?a=edit_account">Account Settings</a></li>
              <li class="accLeftAcc accLeftSet1"><a href="?a=logout">Logout </a></li>
            </ul>
          </div>
        </div>
        <div class="accCtnRight">
		