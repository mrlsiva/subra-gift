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
								<table width="100%">
									<tr>
										<th style="text-align:left; font-size:16px;">Invoice Date</th>

										<th style="text-align:right;font-weight:400;">{{$data['buy_date']}}</th>
									</tr>
								</table>
							</td>	
						</tr>
						 <tr>

							<td style="height:35px;"></td>

						</tr>

						<tr>

							<td style="border: solid 1px #ddd; padding:10px 20px;">

								<p style="font-size:14px;margin:0 0 6px 0;"><span style="font-weight:bold;display:inline-block;min-width:150px">Order status</span><b style="color:green;font-weight:normal;margin:0">Success</b></p>

								<p style="font-size:14px;margin:0 0 6px 0;"><span style="font-weight:bold;display:inline-block;min-width:146px">Transaction ID</span> {{$data['txnid']}}</p>

								<p style="font-size:14px;margin:0 0 0 0;"><span style="font-weight:bold;display:inline-block;min-width:146px">Order amount</span> Rs. {{$data['amount']}}</p>

							</td>

						</tr>

						<tr>

							<td style="height:35px;"></td>

						</tr>

						<tr>
							<td>
								<table width="100%">
									<tr>
										<td style="width:50%;padding:20px;vertical-align:top">

											<p style="margin:0 0 10px 0;padding:0;font-size:14px;"><span style="display:block;font-weight:bold;font-size:13px">Name</span> {{$data['to_name']}}</p>



											<p style="margin:0 0 10px 0;padding:0;font-size:14px;"><span style="display:block;font-weight:bold;font-size:13px;">Address</span>{{$data['address1']}}</p>



										</td>

										<td style="width:50%;padding:20px;vertical-align:top">

											<p style="margin:0 0 10px 0;padding:0;font-size:14px;"><span style="display:block;font-weight:bold;font-size:13px;">Phone</span> +91-{{$data['phone']}}</p>

											<p style="margin:0 0 10px 0;padding:0;font-size:14px;"><span style="display:block;font-weight:bold;font-size:13px;">Email</span> {{$data['to_email']}}</p>



										</td>
									</tr>
								</table>
							</td>
						</tr>

						<tr>

							<td style="font-size:20px;padding:30px 15px 0 15px;"> Products</td>

						</tr>

						<tr>

							<td style="padding:15px;">
								<table width="100%">
									@if($data['email_type'] == 'invoice_2')

										@php $i = 0; @endphp
										 <tr>
										@foreach($data['orders'] as $ord)
											  <td>{{ ++$i }}</td>

											  <td><img src="{{ $ord['product_image'] }}" width="100" /></td>

											  <td> {{ $ord['book_title'] }} </td>

											  <td> <img src="{{ $ord['attach_image_url'] }}" width="100" /> </td>

											  <td> {{ $ord['attach_text'] }} </td>

											  <td> {{ $ord['qty'] }} </td>

											  <td> {{ $ord['price'] }} </td>

											  <td> {{ $ord['total_price'] }} </td>

											</tr>

										@endforeach

									@endif									

									@if($data['email_type'] == 'invoice_3')
									 <tr>
										<td style="font-size:14px;margin:0;padding:10px;border:solid 1px #ddd;font-weight:bold;">

											<span style="display:block;font-size:13px;font-weight:normal;">{{$data['plan_type']}}</span> Rs. {{$data['amount']}} <b style="font-size:12px;font-weight:300;">{{$data['plan_sub']}}</b>

										</td>
									</tr>
									@endif
								</table>
							</td>

						</tr>

						<tr>

							<td style="font-size:14px;padding:50px 15px 0 15px;">

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