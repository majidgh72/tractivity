const Activity = use('App/Models/Activity');
const insertActivityMetas = use('App/Actions/ActivityMeta/insertActivityMetas');

async function insertActivity( userId, activityTypeId, meta ) {
    const activity = new Activity();
    activity.user_id = userId;
    activity.activity_type_id = activityTypeId;
    await activity.save();
    await insertActivityMetas( activity.id, meta );
}

module.exports = insertActivity;