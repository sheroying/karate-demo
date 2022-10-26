function fn() {
  var basicAuth = karate.get('basicAuth');
  var id = karate.get('userId');
  var token = karate.get('token');
    return {
        Authorization: basicAuth,
        'X-ECG-Authorization-User': 'id='+id+', token='+token // convert the java uuid into a string
    };
}
