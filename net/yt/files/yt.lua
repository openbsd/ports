#!${LOCALBASE}/bin/lua
-- $OpenBSD: yt.lua,v 1.22 2009/06/13 02:01:19 martynas Exp $
-- Fetch videos from YouTube.com/Videos.Google.com, and convert to MPEG.
-- Written by Pedro Martelletto and Martynas Venckus.  Public domain.
-- Example: lua yt.lua http://www.youtube.com/watch?v=c5uoo1Kl_uA

getopt = require("getopt")
http = require("socket.http")

-- Set this to a command capable of talking HTTP and following 3XX requests.
fetch = "ftp <arguments> -o <file> <url>"

-- Default arguments for the fetch command.
arguments = ""

-- Set this to a command capable of converting from FLV to MPEG.
convert = "ffmpeg -y -i <flv> -b 1000k -f mp4 -vcodec mpeg4 -acodec libfaac -ab 128k <mp4> 1>/dev/null 2>&1"

-- Set this to the base location where to fetch YouTube videos from.
base_url = "http://www.youtube.com/get_video"

-- Usage and supported options.
prog = {
   name = arg[0],
   usage = "[-C] [-n] [-o=output] url ...",
}
options = Options {
   Option {{"C"}, "continue previous transfer"},
   Option {{"n"}, "do not convert video"},
   Option {{"o"}, "change output filename", "Req", "filename"},
}

-- Process arguments.  Show usage.
urls, opts, errors = getopt.getOpt(arg, options)
if #errors > 0 or urls.n < 1 then
   getopt.dieWithUsage()
end

-- Build arguments for the fetch command.
if opts.C then
   arguments = arguments .. "-C"
end

-- Fetch one or more URL.
for i = 1, table.getn(urls) do
   url = urls[i]

   -- Convert embedded links to the correct form.
   url = string.gsub(url, "/v/", "/watch?v=")

   -- Fetch the page holding the embedded video.
   io.stderr:write(string.format("Getting %s ...\n", url))
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
   if opts.o then
      file = opts.o
   else
      file = string.gsub(title, "[^%w-]", "_")
      file = string.lower(file)
   end

   -- Build flv and mp4 file names.
   if file == "-" then
      opts.n = 0
      flv = file
   else
      flv = file .. ".flv"
   end
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
      io.stderr:write(error .. "\n")
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
   cmd = string.gsub(fetch, "<(%w+)>", { arguments = arguments,
      url = url, file = e_flv })
   assert(os.execute(cmd) == 0, "Failed")

   -- Convert it to MPEG.
   if opts.n then
      io.stderr:write("Done. Video saved in " .. flv .. ".\n")
   else
      cmd = string.gsub(convert, "<(%w+)>", { flv = e_flv, mp4 = e_mp4 })
      io.stderr:write("Converting ...\n")
      assert(os.execute(cmd) == 0, "Failed")
      os.remove(flv)
      io.stderr:write("Done. Video saved in " .. mp4 .. ".\n")
   end
end

