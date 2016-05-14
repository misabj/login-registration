<?php
require_once 'core/init.php';

if($username = Input::get('user')){
	Redirect::to('index.php');
}else{
	$user = new User($username);
	if(!$user->exists()){
		Redirect::to(404);
	}
}
?>
			<table border="1" width="80%">
			<tr>
				<th>Username</th>
				<th>Name</th>
				<th>Joined</th>
				<th>Group</th>
			</tr>
			
			
			<?php
				$users = DB::getInstance()->query("SELECT * FROM users ORDER BY joined DESC");
				foreach($users->results() as $user): ?>
			<tr>
					<td><?php echo escape($user->username);?></td>
					<td><?php echo escape($user->name); ?></td>
					<td><?php echo escape($user->joined); ?></td>
					<td><?php echo escape($user->group); ?></td>
			</tr>
			<?php endforeach; ?>
		
</table>