
' ********** Copyright 2016 Roku Corp.  All Rights Reserved. **********

Sub init()
    m.Video = m.top.findNode("Video")
    content = {
        streamFormat: "mp4"
        HDPosterUrl: "http://www.cowboykerouac.com/joker/splash-screen_fhd.jpg"
        Url: "http://www.cowboykerouac.com/joker/horses.mp4"
    }
    contentNode = createObject("RoSGNode","ContentNode")
    contentNode.Title = "JokerJokerTV Live Stream"
    contentNode.streamFormat = "mp4"
    contentNode.HDPosterUrl = "http://www.cowboykerouac.com/joker/splash-screen_fhd.jpg"
    contentNode.Url = "http://www.cowboykerouac.com/joker/horses.mp4"
    m.Video.content = contentNode
    m.Video.control = "play"
End Sub

