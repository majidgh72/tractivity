# Tractivity User Activity Tracker

Tractivity is an opensource Users Activity tracker for websites written in NodeJS (AdonisJs Framework).
It has high performance and Full-Flexible.

First Release Comings soon.


## Simple Usage:
You can send your data to `activity-log` API with this template:

### Request Method and URL:
```
Post: /api/v1/activity-logger
```

### Request Body:
```json
{
    "type": 1,
    "meta": [
        {
            "key": "clicked_element",
            "value": "header_register_button"
        },
        {
            "key": "ref_page",
            "value": "contactus"
        },
    ]
}
```

`type` field shown `activity_type_id` based on admin panel. each activity type has an unique id.
For Example you can make an `Activity Type` in admin panel for clicks and get it's unique id.
When user clicks in every elements in your website, you should make a post request and pass click type id in type field.

`meta` field is an array that hold meta data of each activity. you can fill it based on your own requirements.

```
[Note]: Admin Panel is not available yet but it is under construnction and will coming soon :)
```