# MT Notify
Simple clean FiveM notify script

# Preview
![mt_notify](https://github.com/MT-Scripts/mt_notify/assets/89866234/ac80b683-6d7e-49f6-8a09-d2344015739b)

# Export
Use the following export client or server
```
exports.mt_notify:sendNotify(data)
```
Data fields:
- message: string (required)
- time: number (optional)
- type: string (required)
- icon: string (optional)
- background: string (optional)
- textColor: string (optional)
- iconColor: string (optional)

Default types:
- info
- information
- primary
- error
- success
- custom

Example usages:
```
exports.mt_notify:sendNotify({ message = 'This is a test notify', time = 5000, type = 'success' })
```
```
exports.mt_notify:sendNotify({ message = 'This is a test notify', time = 5000, type = 'custom', icon = 'fas fa-info-circle', background = 'white', textColor = 'black', iconColor = 'red' })
```
