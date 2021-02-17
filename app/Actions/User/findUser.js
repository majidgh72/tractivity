const Token = use('App/Helpers/Token');
const User = use('App/Models/User');
const createNewUser = use('App/Actions/User/createNewUser');


async function findUser( userToken, userAgent, setUserCookie ) {
    let verified = await Token.verify(userToken);
    if( verified ) {
        let currentUser = await User.findBy( 'id', verified.userId );
        if( !currentUser ) {
            let user = await createNewUser( setUserCookie, userAgent );
            currentUser = user;
        }
        clientUserId = currentUser.id;
    } else {
        let user = await createNewUser( setUserCookie, userAgent );
        clientUserId = user.id;
    }

    return clientUserId;
}

module.exports = findUser;