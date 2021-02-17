'use strict';
const Model = use('Model');


class Activity extends Model {

    static get connection() {
        return 'mysql'
    }

    static get table() {
        return 'activities';
    }

    static get createdAtColumn() {
        return null;
    }

    static get updatedAtColumn() {
        return null;
    }

    metas() {
        return this.hasMany('App/Models/ActivityMeta');
    }

}

module.exports = Activity
