
' ********** Copyright 2016 Roku Corp.  All Rights Reserved. **********

Sub init()


    m.Video = m.top.findNode("Video")
    contentNode = createObject("RoSGNode","ContentNode")
    contentToPlay = GetScheduledContent()
    contentNode.Title = contentToPlay.Title
    contentNode.streamFormat = "mp4"
    contentNode.HDPosterUrl = "http://www.cowboykerouac.com/joker/splash-screen_fhd.jpg"
    contentNode.Url = contentToPlay.Url
    m.Video.content = contentNode
    m.Video.control = "play"
End Sub

Function GetScheduledContent()
    'currently picks a random video from the hours schedule'
    'as many of these variable arrays as you want can be made for scheduling'
    'based on hour, itll pull a random video from the array and play it'
    industrial = [
        {
        Title: "Cowboy Kerouac - They Don't Let You Fuck The Horses"
        Url: "http://www.cowboykerouac.com/joker/horses.mp4"
        }
    ]
    comedy = [
        {
        Title: "Baby Dick"
        Url: "http://www.cowboykerouac.com/joker/baby_dick.mp4"
        }
    ]
    noise = [
        {
        Title: "Cruzin' Along"
        Url: "http://www.cowboykerouac.com/joker/cruzin.mp4"
        }
    ]
    local = [
        {
        Title: "QVC"
        Url: "http://www.cowboykerouac.com/joker/qvc.mp4"
        }
    ]
    berlin = [
        {
        Title: "Daddy's An Out Of Work Blacksmith"
        Url: "http://www.cowboykerouac.com/joker/daddy.mp4"
        }
    ]

    deadAir = [
        {
        Title: "Roku Example One"
        streamFormat: "mp4"
        HDPosterUrl: "https://placeholdit.imgix.net/~text?txtsize=33&txt=channel+logo&w=267&h=150"
        Url: "https://commondatastorage.googleapis.com/gtv-videos-bucket/sample/Sintel.mp4"
        }
    ]
    'an array of available hours for a specific hour of day'
    schedule = [
        industrial '12 AM'
        comedy '1 AM'
        noise '2 AM'
        local '3 AM'
        berlin '4 AM'
        industrial '5 AM'
        comedy '6 AM'
        noise '7 AM'
        local '8 AM'
        berlin '9 AM'
        industrial '10 AM'
        comedy '11 AM'
        noise '12 PM'
        local '1 PM'
        berlin '2 PM'
        industrial '3 PM'
        comedy '4 PM'
        noise '5 PM'
        local '6 PM'
        berlin '7 PM'
        industrial '8 PM'
        comedy '9 PM'
        noise '10 PM'
        local '11 PM'
    ]
    'get the hour'
    date = CreateObject("roDateTime")
    date.toLocalTime()
    time = date.asTimeStringLoc("short-h24")
    print "The date is now "; date.AsDateString("long-date")
    print "The time is now "; time
    hour = Val(mid(time, 1, 2))
    print "The hour is now "; hour
    print "retrieving random video from schedule"
    'get this hours schedule'
    possibleVideos = schedule.getEntry(hour)
    print "possible videos: "; possibleVideos
    'pick a random video from this hours schedule'
    randomNumber = RND(possibleVideos.count())
    print "random number: "; randomNumber
    finalVideo = possibleVideos.getEntry(randomNumber - 1)
    print "final video: "; finalVideo
    return finalVideo
End Function