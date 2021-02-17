'use strict';
const Model = use('Model');

class UserMeta extends Model {

    static get connection() {
        return 'mysql'
    }

    static get createdAtColumn() {
        return null;
    }

    static get updatedAtColumn() {
        return null;
    }
    
}

module.exports = UserMeta;
