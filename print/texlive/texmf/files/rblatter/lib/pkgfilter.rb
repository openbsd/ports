#!/usr/bin/env ruby
# Copyright (c) 2008-2010, Edd Barrett <vext01@gmail.com>
# 
# Permission to use, copy, modify, and/or distribute this software for any
# purpose with or without fee is hereby granted, provided that the above
# copyright notice and this permission notice appear in all copies.
# 
# THE SOFTWARE IS PROVIDED "AS IS" AND THE AUTHOR DISCLAIMS ALL WARRANTIES
# WITH REGARD TO THIS SOFTWARE INCLUDING ALL IMPLIED WARRANTIES OF
# MERCHANTABILITY AND FITNESS. IN NO EVENT SHALL THE AUTHOR BE LIABLE FOR
# ANY SPECIAL, DIRECT, INDIRECT, OR CONSEQUENTIAL DAMAGES OR ANY DAMAGES
# WHATSOEVER RESULTING FROM LOSS OF USE, DATA OR PROFITS, WHETHER IN AN
# ACTION OF CONTRACT, NEGLIGENCE OR OTHER TORTIOUS ACTION, ARISING OUT OF
# OR IN CONNECTION WITH THE USE OR PERFORMANCE OF THIS SOFTWARE.
# 
# RBlatter
# $Id: pkgfilter.rb,v 1.2 2011/03/08 00:09:42 edd Exp $
#
# Filters package contents based upon a subsetconf

require "subsetconf"
require "spinner"
require "set"
require "pkgscanner"

class PkgFilter

	# Create a new subset shaper and index the tlpdb database
	def initialize()

		# tlpdb directives to remove
		@@noInterest = 
			["name", "category", "revision", "shortdesc",
			"longdesc", "catalogue", "catalogue-version",
			"catalogue-date", "catalogue-ctan",
			"catalogue-license", "postaction"]
		@@blocks = 
			["runfiles", "docfiles", "binfiles", "srcfiles"]
		@@leaveAlone = ["depend"]

		@pass = 1
		@@spinner = Spinner.new
	end

	# Filter un-needed junk and un-needed doc/run/src/bin files
	# out of a index contents buffer.
	def filterContents(inBuf, subset)

		buf = ""

		ignoreFiles = nil

		blockType = nil # nil if not in block
		name = "<undefined>"

		for line in inBuf do

			if line =~ /^ / then

				# a filename inside a "block"
				if blockType == nil then
					puts "*error: syntax error: file not in block near #{name}"
					exit 1
				end

				# OK
				if ignoreFiles == false then
					line.strip!
					buf = buf + line.split(" ")[0]
					buf += "\n"
				end

			else

				# Can't be in a block anymore
				blockType = nil

				# Extract directive and value
				line =~ /^(.*?) (.*)/
				dir = $1
				val = $2

				# Cache the name for error messages
				if dir == "name" then
					name = val 
				end

				# Filter away uninteresting directives
				if @@noInterest.index dir then
					#ignore
				elsif @@blocks.index dir then 
					blockType = dir
					ignoreFiles = willIgnore?(
						blockType, subset)
				elsif @@leaveAlone.index dir then
					# Stuff you leave in place
					# like 'depend'
					buf = buf + line
				elsif dir == "execute"
					# formats hints, map hints
					parseExecute val, subset
				else
					printf "*error: unrecognised"
					printf " directive in tlpdb: '"
					puts "#{dir}': #{line}"
					exit 1
				end

			end #if
		end

		buf

	end

	private
	# Tell us if we should ignore these types of files 
	# in the subset +subsetConf+. Valid file types are
	# +runfiles+, +docfiles+, +binfiles+ and +srcfiles+.
	def willIgnore?(fileType, subsetConf)
		use = ""
		if fileType == "runfiles" then
			use = subsetConf.useRunFiles
		elsif fileType == "docfiles" then
			use = subsetConf.useDocFiles
		elsif fileType == "binfiles" then
			use = subsetConf.useBinFiles
		elsif fileType == "srcfiles" then
			use = subsetConf.useSrcFiles
		end

		use = !use

		use
	end

	private
	# Decides what to do with execute statements.
	# +str+ is the string following the +execute+ word.
	def parseExecute(str, conf)

		parts = str.split " "

		case parts[0]
		when "AddFormat":
			# Ignore
		when "BuildFormat":
			conf.formatHints << parts[1]
		when "BuildLanguageDat":
			# Ignore
		when "AddHyphen":
			# Ignore
		when "addMap":
			conf.mapHints << parts[0] + " " + parts[1]
		when "addMixedMap":
			conf.mapHints << parts[0] + " " + parts[1]
		else
			printf "*error: unknown execute statement:"
			puts parts[0]
		end
	end
end
