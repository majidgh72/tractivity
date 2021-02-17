'use strict'

const Route = use('Route');
const apiRoutes = require('./routes/api');

Route.on('/').render('welcome');

Route.group(() => {

    apiRoutes.map(( route ) => {
        const { method, path, handler } = route;
        return Route[ method ](path, handler);
    });
    
}).prefix('api/v1');