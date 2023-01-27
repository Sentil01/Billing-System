import $ from 'jquery';

$(document).ready(()=>{
    $.ajax({
        type: 'POST',
        headers: {
            'X-CSRF-TOKEN': $('meta[name="csrf-token"]').attr('content')
        },
        url: $('div[data-read-url]').attr('data-read-url'),
    });
});

