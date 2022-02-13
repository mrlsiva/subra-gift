

<footer class="container-fluid bg-grey pt-5 pb-2">

    <div class="container">

        <div class="row">

            <div class="col-12 col-sm-12 col-md-6 col-lg-6 col-xl-6">

                <div class="row">

                    <div class="col-12 col-sm-12 col-md-6 col-lg-6 col-xl-6 mb-2">

                    <div class="logo-part">

                        <img src="{{ url('/resources/img/logo1.png') }}" class="w-50 logo-footer mb-2" >

                        <p>Subra Gift Studios are one of the Trending customized Gift store to suit the interests of their Customers. </p>

                        <p>We are the personalized Gift Shop. A wonderful way to sell the Best Gifts.</p>

                    </div>

                    </div>

                    <div class="col-12 col-sm-12 col-md-6 col-lg-6 col-xl-6  mb-2">

                    <h6> Personalized Gifts</h6>

                    <p>We have 500+ Gifts for your loved one</p>

                    <a href="{{ url('/aboutus') }}" class="btn-footer"> More Info </a><br>

                    <a href="{{ url('/terms-and-conditions') }}" class="btn-footer"> Terms & Policy</a>

                    </div>

                </div>

            </div>

            <div class="col-12 col-sm-12 col-md-6 col-lg-6 col-xl-6">

                <div class="row">

                    <div class="col-12 col-sm-12 col-md-6 col-lg-6 col-xl-6  mb-2">

                        <h6>Our Categories</h6>

                        <div class="row ">

                            <div class="col-6 col-sm-6 col-md-6 col-lg-6 col-xl-6">

                                <ul>

                                    <li> <a href="{{ url('/series/mug') }}"> Mug</a> </li>

                                    <li> <a href="{{ url('/series/pillows') }}"> Pillows</a> </li>

                                    <li> <a href="{{ url('/series/keychain') }}"> Keychain</a> </li>

                                    <li> <a href="{{ url('/series/tshirt') }}"> T-Shirt</a> </li>

                                </ul>

                            </div>

                            <div class="col-6 col-sm-6 col-md-6 col-lg-6 col-xl-6  mb-2">

                                <ul>

                                    <li> <a href="{{ url('/series/waterbottle') }}"> Water Bottle</a> </li>

                                    <li> <a href="{{ url('/series/teddybear') }}"> Teddy Bear</a> </li>

                                    <li> <a href="{{ url('/series/facemask') }}"> Face Mask</a> </li>

                                    <li> <a href="{{ url('/series/caricature') }}"> Caricature</a> </li>

                                </ul>

                            </div>

                        </div>

                    </div>

                    <div class="col-12 col-sm-12 col-md-6 col-lg-6 col-xl-6 ">

                    

                    <div class="social mb-2">

                    <h6> Connect with us</h6>

                       
                        <section class="buttons">

                            <a href="https://www.facebook.com/subragiftstudios">

                                <button class="spin circle"><i class="fa fa-facebook" aria-hidden="true"></i></button>

                            </a>

                            <a href="https://www.instagram.com/subragiftstudios/">

                                <button class="spin circle"><i class="fa fa-instagram" aria-hidden="true"></i></button>

                            </a>

                        </section>

                    </div>

                    

                    <div class="social">

                    <h6 class=""> Get in touch with us</h6>

                        <!-- <a href="#"><i class="fa fa-email" aria-hidden="true"></i></a> -->

                        <a href="#"><i class="fa fa-phone" aria-hidden="true"></i></a>

                        <a href="tel:9176869616">+91 91 76 86 96 16</a>

                    </div>

                    

                    

                    </div>

                </div>

            </div>

        </div>

    </div>

</footer>
<footer class="container-fluid pb-2 pt-2" style="background-color: #191818; color: #fff; font-size:12px">
    <div class="container">

<div class="row">
    <div class="col-12 col-sm-12 col-md-6 col-lg-6 col-xl-6">

    Copyrights © {{ date('Y') }}
</div>
<div class="col-12 col-sm-12 col-md-6 col-lg-6 col-xl-6 text-right">
    Design and Developed by <a href="www.slinggroups.in" target="_blank">Sling Groups</a> 

    {{-- Design and Developed by <a href="www.slinggroups.in" target="_blank">Sling Groups</a>  --}}
</div>
</div>
</div>
</footer>


<script type="text/javascript">

    $(document).ready(function() {

        /*$('#myorders').click(function(e) {

            e.stopPropagation();    

            e.preventDefault();

            window.location.href = "{{ url('login') }}";

        });*/

    });

</script>

    

    <!-- <div class="footer_wrapper text-white">

    <div class="container py-3">

        <div class="row mt-4">

            <div class="col-12 col-sm-6 col-md-3 col-lg-3 col-xl-3 mb-4">

                <h5 class="mb-4">Subra Gift Studios</h5>

            <p>A Children Bookstore Specializing in books & E-learning for  3-15 year old’s providing Skill Library Books with  Puzzles, Activities and Experiments. We Strive To Connect Children And Teens To Quality Literature Through A Rich Selection Of Books.</p>

        <img src="{{ url('/resources/img/ssl.gif') }}" class="img-fluid mt-3" /></div>

            <div class="col-12 col-sm-6 col-md-3 col-lg-3 col-xl-3 mb-4">

                <h5 class="mb-4">Information</h5>

                <a href="{{ url('/') }}">Home</a> 

                <a href="{{ url('/aboutus') }}">About Us</a>

                <a href="{{ url('/our-e-series') }}">Ebook- Home Education</a>

                <a href="{{ url('/trial-books') }}">TRIAL – VERSION</a>

                <a target="_blank" href="{{ url('/resources/pdf/Our-Library-Catalogue.pdf') }}">Little Prodigy Catalogue</a>

                <a href="{{ url('/tc') }}">Terms & Conditions</a>

                <a href="{{ url('/faq') }}">FAQs</a>

                <a href="{{ url('/blog') }}">Blog</a>

            </div>



            <div class="col-12 col-sm-6 col-md-3 col-lg-3 col-xl-3 mb-4">

                <h5 class="mb-4">Book Categories</h5>

            <a href="{{url('series/picturebooks')}}">PICTURE BOOKS</a>

            <a href="{{url('series/kidscanrecycle')}}">KIDS CAN RE-CYCLE </a>

            <a href="{{url('series/whatsyourhealthyplate')}}">WHAT'S YOUR HEALTHY PLATE </a> 

            <a href="{{url('series/planetsseries')}}">PLANETS SERIES</a>

            <a href="{{url('series/growingplants')}}">GROWING PLANTS </a>

            <a href="{{url('series/howdidthatgettomytable')}}">HOW DID THAT GET TO MY TABLE </a> 

            <a href="{{url('series/howdidthatgettomyhouse')}}">HOW DID THAT GET TO MY HOUSE  </a>

            <a href="{{url('series/charactereducation')}}">CHARACTER EDUCATION</a>

        

        

        

        </div>

            <div class="col-12 col-sm-6 col-md-3 col-lg-3 col-xl-3 mb-4"><h5 class="mb-4">Contact Us</h5>

           <div class="hover_left mb-3"> <p class="bold">Email</p><a href="#">books.littleprodigy@gmail.com</a></div>

           <div class="hover_left mb-3"> <p class="bold">Phone</p><a href="#">+91 8856914939, +91 9011524939</a></div>

           <div class="hover_left mb-3"> <p class="bold">Address</p><a href="#">No 10 Venkataraman street Srinivasa avenue Chennai 600028</a></div>

        

        </div>



        </div>

        

    </div>

</div>

<div class="footer_wrapper text-white">

    <div class="container py-3">

<div class="row">

            <div class="col-12 col-sm-12 col-md-12 col-lg-12 col-xl-12">

                <ul class="social_logos">			

					<li class="fb"><a target="_blank" href="https://www.facebook.com/Littleprodigybooks-106937430852271" alt="Facebook icon" title="Facebook"><i class="fa fa-facebook" aria-hidden="true"></i></a></li>   

					</ul>    

            </div>

        </div>

    </div>

</div>

 -->

