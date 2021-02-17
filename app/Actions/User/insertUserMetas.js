const DeviceDetector = use("device-detector-js");
const UserMeta = use('App/Models/UserMeta');

async function insertUserMetas( userId, userAgent ) {
    const deviceDetector = new DeviceDetector();
    const device = deviceDetector.parse(userAgent);
    const userMetas = [];

    userMetas[0] = {
        name: "browser_name",
        value: device.client.name
    };

    userMetas[1] = {
        name: "browser_version",
        value: device.client.version
    };

    userMetas[2] = {
        name: "os_name",
        value: device.os.name
    };

    userMetas[3] = {
        name: "os_version",
        value: device.os.version
    };

    userMetas[4] = {
        name: "device_type",
        value: device.device.type
    };


    await userMetas.forEach(async ( userMetaItem ) => {
        const userMeta = new UserMeta();
        userMeta.user_id = userId;
        userMeta.meta_name = userMetaItem.name;
        userMeta.meta_value = userMetaItem.value;

        await userMeta.save();
    });
}

module.exports = insertUserMetas;