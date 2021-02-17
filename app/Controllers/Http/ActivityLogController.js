'use strict';
const insertActivity = use('App/Actions/Activity/insertActivity');
const findUser = use('App/Actions/User/findUser');
const Cookie = use('App/Helpers/Cookie');
const Token = use('App/Helpers/Token');


class ActivityLogController {

    async store({ request, response }) {

        const { cookieName, maxAge } = Cookie.userToken;
        let userToken = request.plainCookie(cookieName);
        let clientUserId;
        const { type, meta } = request.post();
        const userAgent = request.header('User-Agent');


        function setUserCookie( user ) {
            let newToken = Token.sign({ userId: user.id });
            response.plainCookie(cookieName, newToken, {
                httpOnly: true,
                maxAge: maxAge
            });
        }
        

        clientUserId = await findUser( userToken, userAgent, setUserCookie );
        insertActivity( clientUserId, type, meta );
        
        return "1";

    }

}

module.exports = ActivityLogController;
