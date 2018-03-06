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
        <!-- Navigation -->
        <nav class="navbar navbar-default">
            <div class="container-fluid">
                <div class="navbar-header">
                    <a class="navbar-brand active" href="/">MikeySantoro.com</a>
                </div>
                <ul class="nav navbar-nav">
                    <li class="{{'active' if request.path == '/isprime' else ''}}"><a href="/isprime">Is Prime?</a></li>
                    <li class="{{'active' if request.path == '/about' else ''}}"><a href="/about">About</a></li>
                </ul>
            </div>
        </nav>

        <!-- Body Panel -->
        <div class="container">
            <div class="row">
                <div class="col-md-2"></div>
                <div class="col-md-8">
                    <div class="panel panel-default">
                        <div class="panel-heading">
                            <h2 class="text-center">
                                {% block panel_heading %}{% endblock %}
                            </h2>
                        </div>
                        <div class="panel-body" style="min-height:400px">
                                {% block panel_body %}{% endblock %}
                        </div>
                        <div class="panel-footer">
                            <p class="text-center">Established in 2018</p>
                        </div>
                    </div>
                </div>
                <div class="col-md-2"></div>
            </div>
        </div>


        {% block javascript %}{% endblock %}
    </body>
</html>
