#!${LOCALBASE}/bin/lua
-- $OpenBSD: yt.lua,v 1.20 2009/06/06 11:58:22 martynas Exp $
-- Fetch videos from YouTube.com and convert them to MPEG.
-- Written by Pedro Martelletto in August 2006. Public domain.
-- Example: lua yt.lua http://www.youtube.com/watch?v=c5uoo1Kl_uA

http = require("socket.http")

-- Set this to a command capable of talking HTTP and following 3XX requests.
fetch = "ftp -o <file> <url>"

-- Set this to a command capable of converting from FLV to MPEG.
convert = "ffmpeg -y -i <flv> -b 1000k -f mp4 -vcodec mpeg4 -acodec libfaac -ab 128k <mp4> 1>/dev/null 2>&1"

-- Set this to the base location where to fetch YouTube videos from.
base_url = "http://www.youtube.com/get_video"

-- Make sure a URL was given.
assert(table.getn(arg) > 0, "Wrong usage, no URL given")

-- Fetch one or more URL.
for i = 1, table.getn(arg) do
   url = arg[i]

   -- Convert embedded links to the correct form.
   url = string.gsub(url, "/v/", "/watch?v=")

   -- Fetch the page holding the embedded video.
   print(string.format("Getting %s ...", url))
   body = assert(http.request(url))

   -- Look for the video title.
   pattern = "<title>(.-)</title>"
   title = assert(string.match(body, pattern))

   -- Fetch high quality if available.
   if (string.match(body, "yt.VideoQualityConstants.HIGH") ~= nil) and
   ((string.match(body, "/watch_fullscreen%?.*fmt_map=[^&]*%%2C6[^%d]")~=nil) or
   (string.match(body,"/watch_fullscreen%?.*fmt_map=6[^%d]")~=nil)) then
      fmt = "&fmt=6"
   else
      fmt = ""
   end

   -- Build a name for the files the video will be stored in.
   file = string.gsub(title, "[^%w-]", "_")
   file = string.lower(file)
   flv = file .. ".flv"
   mp4 = file .. ".mp4"

   -- Escape the file names.
   e_flv = string.format("%q", flv)
   e_mp4 = string.format("%q", mp4)

   -- Look for the video ID.
   pattern = "/watch_fullscreen%?.*video_id=([^&\"]*)"
   video_id = string.match(body, pattern)

   -- Check for error such as "This video is not available in your country."
   error_pattern = "<div class=\"errorBox\">%s+(.-)</div>"
   error = string.match(body, error_pattern)
   if error then
      print(error)
      return
   end

   if video_id then
      --- Look for the additional video ID.
      pattern = "/watch_fullscreen%?.*&t=([^&\"]*)"
      t = assert(string.match(body, pattern))
      url = string.format("%q", base_url .. "?video_id=" .. video_id
         .. "&t=" .. t .. fmt)
   else
      -- We assume it's Google Video URL.
      pattern = "'/googleplayer.swf%?videoUrl(.-)'"
      url = assert(string.match(body, pattern))
      url = string.gsub (url, "\\x", "%%")
      url = string.gsub (url, "%%(%x%x)", function(h)
         return string.char(tonumber(h,16)) end)
      url = string.gsub (url, "^=", "")
      url = string.format("%q", url)
   end

   -- Fetch the video.
   cmd = string.gsub(fetch, "<(%w+)>", { url = url, file = e_flv })
   assert(os.execute(cmd) == 0, "Failed")

   -- Convert it to MPEG.
   cmd = string.gsub(convert, "<(%w+)>", { flv = e_flv, mp4 = e_mp4 })
   print("Converting ...")
   assert(os.execute(cmd) == 0, "Failed")

   os.remove(flv)
   print("Done. Video saved in " .. mp4 .. ".")
end

