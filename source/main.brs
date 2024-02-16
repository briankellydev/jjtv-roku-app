
'********** Copyright 2016 Roku Corp.  All Rights Reserved. **********

sub Main()
    screen = CreateObject("roSGScreen")
    m.port = CreateObject("roMessagePort")
    screen.setMessagePort(m.port)
    
    dev = createObject("roDeviceInfo")
    model = (Left(dev.GetModel(),1)).toInt()
    if model < 4
        m.global.Model = 1
    end if
    
    scene = screen.CreateScene("HomeScene")
    screen.show()
    
    m.Video = scene.findNode("Video")

    while(true)
       msg = wait(0, m.port)
	   msgType = type(msg)
       if msgType = "roSGScreenEvent"
            print msg
            if msg.isScreenClosed() then return
       end if
    end while
end sub