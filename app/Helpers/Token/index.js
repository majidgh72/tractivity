const jwt = use('jsonwebtoken');
const { cookieData } = use('App/Helpers');

class Token {

    async verify( token ) {
        const { secretKey } = cookieData.userToken;
        let result = await jwt.verify( token, secretKey, function( err, decoded ) {
            if( !err ) return decoded;
            return false;
        });
        return result;
    }

    sign( data ) {
        const { secretKey } = cookieData.userToken;
        return jwt.sign(data, secretKey);
    }
}

module.exports = new Token();