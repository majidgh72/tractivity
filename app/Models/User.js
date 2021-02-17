'use strict';
const Model = use('Model');


class User extends Model {

    static get connection() {
        return 'mysql'
    }

    static get createdAtColumn() {
        return null;
    }

    static get updatedAtColumn() {
        return null;
    }

    activities() {
        return this.hasMany('App/Models/Activity');
    }

    metas() {
        return this.hasMany('App/Models/UserMeta');
    }
    
}

module.exports = User
