<?php

use App\User;
use App\Blog;
use App\Mail\CommentMail;
use Illuminate\Support\Facades\Mail;

function sendCommonMail($type, $data) {
	if($type == 'blog')
	{
	
		$return = Mail::to($data['to_email']);
		if(isset($data['cc_email']))
		{
		$return->cc($data['cc_email']);
		}
		$return->send(new CommentMail($data));
		
	}
		if($type == 'mail_queue')
	{
		$return = Mail::to($data['to_email']);
		if(isset($data['cc_email']))
		{
		$return->cc($data['cc_email']);
		}
		$return->send(new CommentMail($data));
	}
	if($type == 'invoice')
	{
		$return = Mail::to($data['to_email']);
		if(isset($data['cc_email']))
		{
		$return->cc($data['cc_email']);
		}
		$return->send(new CommentMail($data));
	}
	if($type == 'user_expiry')
	{
		$return = Mail::to($data['to_email']);
		if(isset($data['cc_email']))
		{
		$return->cc($data['cc_email']);
		}
		$return->send(new CommentMail($data));
	}
}

function formatOrderDate($datetime) {
    //return date('M,d Y H:i', strtotime($datetime));
    return date('d-m-Y H:i', strtotime($datetime));
}