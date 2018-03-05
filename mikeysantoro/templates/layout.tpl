<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="UTF-8" />
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
        <title>Mikey Santoro</title>

        <!-- Bootstrap CSS -->
        <link rel= "stylesheet" type= "text/css" href= "{{ url_for('static',filename='css/bootstrap.min.css') }}">

        <!-- JQuery -->
        <script type="text/javascript" src="{{ url_for('static', filename='js/jquery-3.3.1.min.js') }}"></script>

        <!-- Bootstrap JS -->
        <script type="text/javascript" src="{{ url_for('static', filename='js/bootstrap.min.js') }}"></script>

    </head>

    <body>
        {% block body %}{% endblock %}
    </body>
</html>
