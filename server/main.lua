sendNotify = function(data)
    TriggerClientEvent('mt_notify:sendNotify', data)
end
exports('sendNotify', sendNotify)