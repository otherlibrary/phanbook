<!DOCTYPE html>
<html>
<head>
    {% set controller = this.view.getControllerName(), action =  this.view.getActionName()%}
    {% set name = this.config.application.name, publicUrl = this.config.application.publicUrl %}
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, target-densitydpi=160dpi, initial-scale=1.0" />
    <meta name="description" content="">
    <meta name="keywords" content="{{name}}, Phalcon, PHP, Stack">
    <meta name="author" content="Phanbook Team">

    <link rel="shortcut icon" href="{{ getImageSrc('favicon.png') }}">
    <title>{% block title %}{% endblock %}</title>

    {{ this.assets.outputCss() }}

    <script type="text/javascript">
        var baseUri     = '/backend/';
        var controller  = '{{ controller }}';
        var action      = '{{ action }}';
        var googleAnalytic = '{{ this.config.googleAnalytic }}';
    </script>
</head>
<body class="hold-transition login-page">
{{ this.flashSession.output()}}
<div class="login-box">
    <div class="login-logo">
        <a href="/"><b>Admin</b> {{name}}</a>
    </div>

    {% block content%}{% endblock %}
</div>
<!-- /.login-box -->
{{ this.assets.outputJs() }}
<!-- jQuery 2.2.0 -->

</body>
</html>
