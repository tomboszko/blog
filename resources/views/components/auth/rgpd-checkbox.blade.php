<label class="h-add-bottom">
    <input 
        id="rgpd" 
        type="checkbox" 
        name="rgpd"
        {{ old('rgpd') ? 'checked' : '' }}> 
    <span class="label-text">@lang("I have read and accept the site's")<a href="/page/privacy-policy"> @lang("privacy policy")</a></span>
</label>