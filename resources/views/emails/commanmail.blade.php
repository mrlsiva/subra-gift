<!DOCTYPE html>

<html>



<head>

    <meta charset='utf-8'>

    <meta http-equiv='X-UA-Compatible' content='IE=edge'>

    <title>Expiry Intimation</title>

    <meta name='viewport' content='width=device-width, initial-scale=1'>

</head>



<body style="padding: 0; margin: 0;">

    <div align="center" style="width: 100%; overflow: hidden;">

        <div style="max-width: 680px; width: 100%; margin-top: 5px;">

            <div>

                <img src="https://littleprodigybooks.in/resources/img/logo.png" style="width: 100%; max-width:250px" alt="" border="0 " />

            </div>

            <div style="background-color: #fbfcfd; border-top: thick double #cccccc; text-align: left; width: 100%;">

                <div style="padding: 20px; width: 100%;">
                
					@if(isset($data['order_cancel_body']))
                    <p style="width: 80%;">

                        Dear {{$data['to_name']}},<br> <br> {{ $data['order_cancel_body']}}</p>
                    
					@endif
                    @if(isset($data['order_delivery_body']))
                    <p style="width: 80%;">

                        Dear {{$data['to_name']}},<br> <br> {{ $data['order_delivery_body']}}</p>
                    
					@endif



                    <p style="text-align: left; width: 100%;">Please revert back for any clarifications</p>

                    <table style="text-align: left; width: 100%;">

                        <tr>

                            <th>Whatzapp: +91 90115 24939</th>

                        </tr>

                        <tr>

                            <th>Mail : Books.liitleprodigy@gmail.com</th>

                        </tr>

                    </table>



                    <br>



                    <div style="text-align: Right; width: 100%; margin-left: -45px; ">

                        Thank you with warm regards,<br> Little Prodigy Books Team

                    </div>

                </div>

            </div>

        </div>

    </div>

</body>



</html>