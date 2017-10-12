<?php
 
define('FACEBOOK_APP_ID', '362950273803204');
define('FACEBOOK_SECRET', 'c24d089ebe9948578c69aef889b81ea7');
 
if (!isset($_REQUEST['code'])) {
  header('Location: https://graph.facebook.com/oauth/authorize?client_id=' . FACEBOOK_APP_ID .'&redirect_uri=http://www.facebook.com&scope=[extended perms]);
  exit;
} else {
  $pieces = file_get_contents('https://graph.facebook.com/oauth/access_token?client_id='.FACEBOOK_APP_ID.'&redirect_uri=http://www.facebook.com&client_secret='.FACEBOOK_SECRET.'&code='.$_REQUEST['code']);
  $pieces = explode('&', $pieces);
  $token = (explode('=', $pieces[0]));
  $token=$token[1];
 
  echo $token;
}
