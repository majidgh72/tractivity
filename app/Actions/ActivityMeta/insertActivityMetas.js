const ActivityMeta = use('App/Models/ActivityMeta');

async function insertActivityMetas( activityId, meta ) {
    await meta.forEach(async (metaItem) => {
        const activityMeta = new ActivityMeta();
        activityMeta.activity_id = activityId;
        activityMeta.meta_name = metaItem.key;
        activityMeta.meta_value = metaItem.value;
        await activityMeta.save();
    });
}

module.exports = insertActivityMetas;