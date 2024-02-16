
' ********** Copyright 2016 Roku Corp.  All Rights Reserved. **********

Sub init()
    m.Video = m.top.findNode("Video")
    m.Video.setFocus(true)
    m.Video.Title = "JokerJokerTV Live Stream"
    m.Video.streamFormat = "mp4"
    m.Video.HDPosterUrl = "http://www.cowboykerouac.com/joker/splash-screen_fhd.jpg"
    m.Video.Url = "http://www.cowboykerouac.com/joker/horses.mp4"
    m.Video.control = "play"
    'may need to add m.Video.content equal to a JSON object with this similar info'
End Sub

