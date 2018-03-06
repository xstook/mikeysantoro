{% extends "layout.tpl" %}

{% block panel_heading %}
Is Prime?
{% endblock %}



{% block panel_body %}

<div class="row">
    <div class="col-md-12 text-center">
        <h2>Are you thinking of a prime number?</h2>
        <br>
    </div>
</div>

<div class="row">
    <div class="col-md-4"></div>
    <div class="col-md-4">
        <form id="prime_form" action="/_calc_prime">
            <div class="form-group has-feedback" id="number_input">
                <input class="form-control" type="number" name="user_number">
                <span id="feedback_span" class="glyphicon form-control-feedback"></span>
                <br>
                <input id="submit_button" type="submit" class="btn btn-primary btn-block" value="Check">
            </div>
        </form>
    </div>
</div>


{% endblock %}


{% block javascript %}
<script>
// Attach a submit handler to the form
$("#prime_form").submit(function(event) {

    $("#number_input").removeClass("has-success");
    $("#number_input").removeClass("has-error");
    $("#feedback_span").removeClass("glyphicon-ok");
    $("#feedback_span").removeClass("glyphicon-remove");
    $("#submit_button").prop("disabled", true);
    $("#submit_button").val("Calculating...");

    // Stop form from submitting normally
    event.preventDefault();

    // Get some values from elements on the page:
    var url = $(this).attr("action");

    // Send the data using post
    var posting = $.post( url, $("#prime_form").serialize());

    // Put the results in a div
    posting.done(function(data) {
        $("#submit_button").prop("disabled", false);
        $("#submit_button").val("Check");

        if (data == "True"){
            $("#number_input").addClass("has-success");
            $("#number_input").removeClass("has-error");
            $("#feedback_span").addClass("glyphicon-ok");
            $("#feedback_span").removeClass("glyphicon-remove");
        }
        else{
            $("#number_input").addClass("has-error");
            $("#number_input").removeClass("has-success");
            $("#feedback_span").addClass("glyphicon-remove");
            $("#feedback_span").removeClass("glyphicon-ok");
        }
    });
});
</script>
{% endblock %}