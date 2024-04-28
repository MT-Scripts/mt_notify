$(() => {
    const guidGenerator = () => {
        var cString = () => {
            return (((1+Math.random())*0x10000)|0).toString(16).substring(1)
        }
        return (cString()+cString()+cString())
    }

    window.addEventListener('message', (event) => {
        var data = event.data
        var id = 'notify_' + guidGenerator()

        console.log(id)

        $('#notifications-container').append(`
            <div class="notification" id="${id}">
                <div class="icon" id="icon_${id}">
                    <i class="${data.icon} icon"></i>
                </div>
                <div class="message" id="message_${id}">
                    ${data.message}
                </div>
            </div>
        `)

        $('#'+id).css('background-color', data.background)
        $('#message_'+id).css('color', data.textColor)
        $('#icon_'+id).css('color', data.iconColor)
        $('#'+id).css('display', 'flex')
        $('#'+id).addClass('slide-anim-in')

        setTimeout(() => {
            $('#'+id).addClass('slide-anim-out')
            setTimeout(()=>{$("#"+id).remove()}, 1000)
        }, data.time)
    })
})