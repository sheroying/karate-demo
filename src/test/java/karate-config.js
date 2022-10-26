function fn() {
    var env = karate.env; // get java system property 'karate.env'
    var authUser = karate.properties['basicAuthUser'];
    var authPwd = karate.properties['basicAuthPwd'];
    karate.log('karate.env system property was:', env);

    var config = { // base config JSON
        apiBaseUrl: 'https://api.cloud.' + env + '.gumtree.com.au/api',
        // basicAuthUser: 'au_iphone_app',
        // basicAuthPwd:'ecgapi!global',
        basicAuthUser: authUser,
        basicAuthPwd: authPwd
    };

    karate.log('config was:', config.apiBaseUrl);

    // don't waste time waiting for a connection or if servers don't respond within 5 seconds
    karate.configure('connectTimeout', 5000);
    karate.configure('readTimeout', 5000);
    return config;
}