<script>
    const change = () => {
        if(rgpd.checked) {
            submit.removeAttribute('disabled');
            submit.style.cursor = 'pointer';                  
        } else {
            submit.setAttribute('disabled', true);
            submit.style.cursor = 'not-allowed';
            submit.title = 'Vous devez accepter la politique de confidentialité';   
        }
    }

    document.addEventListener('DOMContentLoaded', () => {
        const rgpd = document.getElementById('rgpd');
        const submit = document.getElementById('submit');
        change();
        rgpd.addEventListener('click', () => change());
    });
</script>