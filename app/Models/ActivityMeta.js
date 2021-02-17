'use strict';
const Model = use('Model');

class ActivityMeta extends Model {

    static get connection() {
        return 'mysql'
    }

    static get table() {
        return 'activity_metas';
    }

    static get createdAtColumn() {
        return null;
    }

    static get updatedAtColumn() {
        return null;
    }
    
}

module.exports = ActivityMeta
