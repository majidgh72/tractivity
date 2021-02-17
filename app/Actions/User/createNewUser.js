const User = use('App/Models/User');
const insertUserMetas = use('App/Actions/User/insertUserMetas');

async function createNewUser( callback, userAgent ) {
    const user = new User();
    await user.save();
    insertUserMetas( user.id, userAgent );
    callback( user );
    return user;
}

module.exports = createNewUser;