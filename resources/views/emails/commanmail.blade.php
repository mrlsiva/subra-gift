<html>
<head>

    <meta charset='utf-8'>

    <meta http-equiv='X-UA-Compatible' content='IE=edge'>

    <title>Email Invoice Template</title>

    <meta name='viewport' content='width=device-width, initial-scale=1'>
	 <style type="text/css">
        table {border:0;border-spacing:0;margin:0;width:100%;max-width:100%;}
        div, td {padding:0;}
        div {margin:0 !important;}
    </style>

</head>

<body style="background-color:#e2e1e0;font-family: Open Sans, sans-serif;font-size:100%;font-weight:400;line-height:1.4;color:#000;">

    <table cellpadding="0" cellspacing="0" style="max-width:670px; margin:0 auto; border:0; padding:0;-webkit-border-radius:3px;-moz-border-radius:3px;border-radius:3px;-webkit-box-shadow:0 1px 3px rgba(0,0,0,.12),0 1px 2px rgba(0,0,0,.24);-moz-box-shadow:0 1px 3px rgba(0,0,0,.12),0 1px 2px rgba(0,0,0,.24);box-shadow:0 1px 3px rgba(0,0,0,.12),0 1px 2px rgba(0,0,0,.24);">

        <thead>
            <tr>
                <th style="background-color:#da3340; padding: 10px 15px; text-align:center; color:#ffffff;"><img style="max-width: 100px;" src="{{ url('/') }}/public/images/admin/logo.png" alt="{{ config('app.name') }}" style="color:#ffffff; display: block;"></th>
            </tr>

        </thead>

        <tbody>
			<tr>
				<td width="100%" align="center">
					<table align="center" width="100%" cellpadding="0" cellspacing="0" style="margin:0 auto; background-color:#fff; padding:50px;">						

						<tr>
							<td>
							
								<b>Dear {{$data['to_name']}},</b>
							
							</td>	
						</tr>
						<tr>
							<td style="padding:20px 0;">
								@if(isset($data['order_cancel_body']))							

									{{ $data['order_cancel_body']}}
								
								@endif
								
								@if(isset($data['order_delivery_body']))
									
									{{ $data['order_delivery_body']}}     
									
								@endif
							</td>	
						</tr>					

						<tr>

							<td style="padding:10px 0 15px 0;">
								Please revert back for any clarifications
							</td>

						</tr>					
						
						<tr>

							<td style="font-size:14px; padding:10px 0;">

								<strong style="display:block;margin:0 0 10px 0;">Regards</strong> No 10 Venkataraman street<br> Srinivasa avenue Chennai 600028<br><br>

								<b>Phone:</b> +91 9011524939<br>

								<b>Email:</b> books.littleprodigy@gmail.com

							</td>

						</tr>
						
					</table>
				</td>
			</tr>
        </tbody>

        <tfoot>
			<tr>
				<td style="background-color:#da3340; padding: 10px 15px; color: #ffffff; font-size: 12px; line-height: 1.5em; text-align: center;">© {{ date('Y') }} {{ config('app.name') }}. @lang('All rights reserved.') </td>
			</tr>
        </tfoot>

    </table>

</body>
</html>