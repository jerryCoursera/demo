# run an app server
import flask
import os

port_number = int(os.getenv("PORT_NUMBER", 8831))
app = connexion.FlaskApp(__name__, specification_dir='openapi/')
app.add_api('my_api.yaml', arguments={'title': 'Optimizion Demo Service'})
app.run(port=port_number, debug=True)
