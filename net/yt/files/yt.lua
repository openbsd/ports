#!${MODLUA_BIN}
-- $OpenBSD: yt.lua,v 1.37 2012/12/13 02:48:15 jsg Exp $
-- Fetch videos from YouTube.com/Videos.Google.com, and convert to MPEG.
-- Written by Pedro Martelletto and Martynas Venckus.  Public domain.
-- Example: lua yt.lua http://www.youtube.com/watch?v=c5uoo1Kl_uA

getopt = require("getopt")
http = require("socket.http")
ltn12 = require("ltn12")

-- Set this to a command capable of talking HTTP and following 3XX requests.
fetch = "ftp <arguments> -o <file> <url>"

-- Default arguments for the fetch command.
arguments = ""

-- Set this to a command capable of converting from FLV to MPEG.
convert = "ffmpeg -y -i <flv> -b 1000k -f mp4 -vcodec mpeg4 -acodec aac -ab 128k -strict experimental <mp4> 1>/dev/null 2>&1"

-- Set this to the base location where to fetch YouTube videos from.
base_url = "http://www.youtube.com/get_video_info"

-- Usage and supported options.
prog = {
   name = arg[0],
   usage = "[-cC] [-o=output] url ...",
}
options = Options {
   Option {{"C"}, "continue previous transfer"},
   Option {{"c"}, "convert video"},
   Option {{"o"}, "change output filename", "Req", "filename"},
}

-- from lua-users.org StringRecipes
function url_decode(str)
   while (string.find(str, "%%%x%x")) do
      str = string.gsub (str, "+", " ")
      str = string.gsub (str, "%%(%x%x)",
          function(h) return string.char(tonumber(h,16)) end)
      str = string.gsub (str, "\r\n", "\n")
   end
   return str
end

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
   t = {  }
   assert(http.request{
      url = url,
      sink = ltn12.sink.table(t),
      proxy = os.getenv("http_proxy")
   })
   body = table.concat(t)

   -- Look for the video title.
   pattern = "<title>%s*(.-)%s*</title>"
   title = assert(string.match(body, pattern))
   -- strip html elements
   title = string.gsub(title, "&[^ ]*;", "")
   title = string.gsub(title, "%s*- YouTube%s*", "")

   -- Build a name for the files the video will be stored in.
   if opts.o then
      file = opts.o
   else
      file = string.gsub(title, "[^%w-]+", "_")
      file = string.lower(file)
   end

   -- Look for the video ID.
   pattern = "VIDEO_ID':%s*['\"]([^'\"]*)['\"]"
   video_id = string.match(body, pattern)

   -- Check for error such as "This video is not available in your country."
   error_pattern = "unavailable%-message\"%s* class=\"\">%s*(.-)\n*</div>"
   err = string.match(body, error_pattern)
   if err then
      io.stderr:write(err .. "\n")
      return
   end

   if video_id then
      url = string.format("%q", base_url .. "?video_id=" .. video_id
         .. "&eurl=&el=detailpage&ps=default&gl=US&hl=en")

      -- Look for the download URL
      url = string.match(url, "\"(.*)\"")
      io.stderr:write(string.format("Getting %s ...\n", url))
      t = {  }
      assert(http.request{
         url = url,
         sink = ltn12.sink.table(t),
         proxy = os.getenv("http_proxy")
      })
      body = table.concat(t)
      body = url_decode(body)
      encurl = string.match(body, "url=(http[^,=&]-videoplayback.-type.-)[&;]")
      -- signature
      sig = string.match(body, "sig=(.-)&")
      if sig then
         encurl = encurl .. "&signature=" .. sig
      end
      url = string.format("\"%s\"", encurl)
   else
      -- We assume it's Google Video URL.
      pattern = "/googleplayer.swf%?videoUrl(.-)thumbnailUrl"
      url = assert(string.match(body, pattern))
      url = string.gsub (url, "\\x", "%%")
      url = url_decode(url)
      url = string.gsub (url, "^=", "")
      url = string.format("%q", url)
   end

   -- Build flv and mp4 file names.
   mpeg4 = false

   if file == "-" then
      opts.n = 0
      o_file = file
   else
      if string.find(url, "video/mp4") then
         ext = "mp4"
         mpeg4 = true
      elseif string.find(url, "video/webm") then
         ext = "webm"
      else
         ext = "flv"
      end
      o_file = string.format("%s.%s", file, ext)
   end

   o_mp4 = file .. ".mp4"
   e_file = string.format("%q", o_file)
   e_mp4 = string.format("%q", o_mp4)

   cmd = string.gsub(fetch, "<(%w+)>", { arguments = arguments,
      url = url, file = e_file })
   assert(os.execute(cmd) == 0, "Failed")

   -- Convert it to MPEG.
   if opts.c and mpeg4 ~= true then
      cmd = string.gsub(convert, "<(%w+)>", { flv = e_file, mp4 = e_mp4 })
      io.stderr:write("Converting ...\n")
      assert(os.execute(cmd) == 0, "Failed")
      os.remove(o_file)
      io.stderr:write("Done. Video saved in " .. o_mp4 .. "\n")
   else
      io.stderr:write("Done. Video saved in " .. o_file .. ".\n")
   end
end
