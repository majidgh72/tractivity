const Cookie = {
    userToken: {
        cookieName: "_tractivity_user_token",
        secretKey: process.env.JWT_SECRET_KEY,
        maxAge: 100 * 365 * 24 * 60 * 60,
    }
};

module.exports = Cookie;