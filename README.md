# Tractivity User Activity Tracker

Tractivity is an opensource Users Activity tracker for websites written in NodeJS (AdonisJs Framework).
It has high performance and Full-Flexible.

First Release Comings soon.


## Simple Usage:
You can send your data to `activity-log` API with this template:

```
Post: /api/v1/activity-logger
```

```json
{
    "type": 1, //activity type id (Based on Admin Panel) - <for example 1 is `click` type activity>
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