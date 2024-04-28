sendNotify = function(data)
    if data.type == 'info' or data.type == 'information' or data.type == 'primary' then
        SendNUIMessage({
            icon = 'fas fa-info-circle',
            message = data.message,
            background = '#1b1d21',
            textColor = 'white',
            iconColor = 'white',
            time = data.time or 5000
        })
    elseif data.type == 'error' then
        SendNUIMessage({
            icon = 'fas fa-times-circle',
            message = data.message,
            background = '#6b2424',
            textColor = 'white',
            iconColor = 'white',
            time = data.time or 5000
        })
    elseif data.type == 'success' then
        SendNUIMessage({
            icon = 'fas fa-check-circle',
            message = data.message,
            background = '#246b4d',
            textColor = 'white',
            iconColor = 'white',
            time = data.time or 5000
        })
    elseif data.type == 'custom' then
        SendNUIMessage({
            icon = data.icon or 'fas fa-info-circle',
            message = data.message,
            background = data.background or '#246b4d',
            textColor = data.textColor or 'white',
            iconColor = data.iconColor or 'white',
            time = data.time or 5000
        })
    end
end
exports('sendNotify', sendNotify)
RegisterNetEvent('mt_notify:sendNotify', sendNotify)