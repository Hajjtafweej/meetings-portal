{{--  <footer>
    <div class="container margin_120_95">
        <div class="row">
            <div class="col-lg-12 col-md-12 p-r-5 text-center" style="">
                <p><img src="{{ url('/fornt_end/img/Logos.png') }}" width="420" data-retina="true" alt=""></p>
                <h4 style="color: #fff">
        مبادرة تطوير و تنظيم حركة الحجاج في جميع مراحل التفويج
      </h4>
      <!-- <hr>
                <div class="follow_us">
                    <ul>
                        <li>Follow us</li>
                        <li><a href="#0"><i class="ti-facebook"></i></a></li>
                        <li><a href="#0"><i class="ti-twitter-alt"></i></a></li>
                        <li><a href="#0"><i class="ti-google"></i></a></li>
                        <li><a href="#0"><i class="ti-pinterest"></i></a></li>
                        <li><a href="#0"><i class="ti-instagram"></i></a></li>
                    </ul>
                </div> -->
            </div>
            <!-- <div class="col-lg-3 col-md-6 ml-lg-auto">
                <h5>Useful links</h5>
                <ul class="links">
                    <li><a href="#0">Admission</a></li>
                    <li><a href="#0">About</a></li>
                    <li><a href="#0">Login</a></li>
                    <li><a href="#0">Register</a></li>
                    <li><a href="#0">News &amp; Events</a></li>
                    <li><a href="#0">Contacts</a></li>
                </ul>
            </div> -->
            <!-- <div class="col-lg-3 col-md-6">
                <h5>Contact with Us</h5>
                <ul class="contacts">
                    <li><a href="tel://61280932400"><i class="ti-mobile"></i> + 61 23 8093 3400</a></li>
                    <li><a href="mailto:info@udema.com"><i class="ti-email"></i> info@udema.com</a></li>
                </ul>
                <div id="newsletter">
                <h6>Newsletter</h6>
                <div id="message-newsletter"></div>
                <form method="post" action="assets/newsletter.php" name="newsletter_form" id="newsletter_form">
                    <div class="form-group">
                        <input type="email" name="email_newsletter" id="email_newsletter" class="form-control" placeholder="Your email">
                        <input type="submit" value="Submit" id="submit-newsletter">
                    </div>
                </form>
                </div>
            </div> -->
        </div>
        <!--/row-->
        <hr>
        <div class="row">
            <!-- <div class="col-md-8">
                <ul id="additional_links">
                    <li><a href="#0">Terms and conditions</a></li>
                    <li><a href="#0">Privacy</a></li>
                </ul>
            </div> -->
            <div class="col-md-4">
                <div id="copy">جميع الحقوق محفوظة &copy مبادرة تطوير وحدة التفويج</div>
            </div>
        </div>
    </div>
</footer>
<!--/footer-->

<!-- Search Menu -->
<div class="search-overlay-menu">
    <span class="search-overlay-close"><span class="closebt"><i class="ti-close"></i></span></span>
    <form role="search" id="searchform" method="get">
        <input value="" name="q" type="search" placeholder="Search..." />
        <button type="submit"><i class="icon_search"></i>
        </button>
    </form>
</div><!-- / Search Menu -->  --}}

<!-- Filckr -->

<!-- COMMON SCRIPTS -->
<script src="{{ asset('fornt_end/js/jquery-2.2.4.min.js') }}"></script>
<script src="{{ asset('fornt_end/js/common_scripts.js') }}"></script>
<script src="{{ asset('fornt_end/js/main.js') }}"></script>
  <script src="{{ asset('fornt_end/assets/validate.js') }}"></script>


<!-- SPECIFIC SCRIPTS -->
<script src="{{ asset('fornt_end/layerslider/js/greensock.js') }}"></script>
<script src="{{ asset('fornt_end/layerslider/js/layerslider.transitions.js') }}"></script>
<script src="{{ asset('fornt_end/layerslider/js/layerslider.kreaturamedia.jquery.js') }}"></script>
<script type="text/javascript">
    'use strict';
    $('#layerslider').layerSlider({
        autoStart: true,
        navButtons: false,
        navStartStop: false,
        showCircleTimer: false,
        responsive: true,
        responsiveUnder: 400,
        layersContainer: 400,
        skinsPath: 'layerslider/skins/'
            // Please make sure that you didn't forget to add a comma to the line endings
            // except the last line!
    });
</script>
