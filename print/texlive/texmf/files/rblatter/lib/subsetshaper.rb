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
# $Id: subsetshaper.rb,v 1.2 2011/03/08 00:09:42 edd Exp $
#
# Adds and subtracts texmf subset file lists in order to make new subsets.

require "subsetconf"
require "tlpdbindex"
require "plistdeduper"
require "spinner"
require "set"
require "pkgscanner"
require "pkgfilter"
require "date"

$TMPOUT = "tmp"

class SubsetShaper

	# Create a new subset shaper and index the tlpdb database
	def initialize()

		@subsetConfigs = []
		@pkgFilter = PkgFilter.new
		@pkgScanner = PkgScanner.new
		@pass = 1
		@spinner = Spinner.new

		@includeFiles = Set.new
		@excludeFiles = Set.new
		@finalFiles = Set.new

		@includeMaps = Set.new
		@excludeMaps = Set.new
		@finalMaps = Set.new

		@includeFormats = Set.new
		@excludeFormats = Set.new
		@finalFormats = Set.new

		@dirList = Set.new	# need to add dirs in plist
		@subsetConfigs = []
		@again = true # Will need another pass?
		eqns = EqnParser.new $EQN
		for eqn in eqns.configs do
			@subsetConfigs << eqn
		end

		if File.exists? $TMPOUT then
			puts "*error: '#{$TMPOUT}' exists"
			puts "It can probably be deleted"
			exit 1
		end

		Dir.mkdir $TMPOUT

		run
	end

	private
	# Start parsing and expanding subsets
	def run
		if File.exists? $OUTDIR then
			puts "*error: #{$OUTDIR} exists"
			puts "Remove/move, just do something!"
			exit 1
		end

		writeInitialContents
		expandContents
		performEquation

		Dir.mkdir $OUTDIR
		writePlist
		writeHints
		clean
	end

	# Create and populate subset outputs with toplevel depends
	def writeInitialContents 

		if !$QUIET then
			puts "setting up subsets..."
		end

		for subset in @subsetConfigs do

			# Create file
			outFile = "#{$TMPOUT}/" + subset.uniq.to_s + "-" +
				subset.subsetName + "_1"
			if File.exists? outFile then
				File.delete outFile
			end

			# Do initial population
			outHandle = File.new outFile, "w+"
			contents = @pkgScanner.getContents subset.subsetName
			contents = 
				@pkgFilter.filterContents contents, subset
			outHandle.write contents
			outHandle.close
		end
	end

	# Expand dependencies in a subset output file
	def expandContents

		if !$QUIET then
			puts "expanding subsets..."
		end

		for subset in @subsetConfigs do

			name = subset.subsetName
			if !$QUIET then
				puts "expanding #{name}"
			end
			@pass = 1

			@again = true 
			while @again == true 

				@again = false

				if !$QUIET then
					print "pass #{@pass}: \n"
				end

				@spinner.rewind

				# Open files
				inHandle = File.new(
					"#{$TMPOUT}/" + subset.uniq.to_s + 
					"-" + name + "_#{@pass}", "r")

				outHandle = File.new(
					"#{$TMPOUT}/" + subset.uniq.to_s +
					 "-" + name + "_#{@pass.next}",
					 "w+")

				for line in inHandle do
					expLine = expandLine line, subset
					outHandle.write expLine
				end

				@pass = @pass.next
				inHandle.close
				outHandle.close

				if !$QUIET then
					print "\b"
				end

				PListDeduper.new "#{$TMPOUT}/" + 
					subset.uniq.to_s +
					"-" + name + "_#{@pass}"
			end #while

			if !$QUIET then
				puts "#{@pass} passes"
			end

			File.rename("#{$TMPOUT}/#{subset.uniq.to_s}" +
				    "-#{name}_#{@pass}",
				"#{$TMPOUT}/#{subset.uniq.to_s}-" +
				"#{name}_final")

		end #for
	end

	# Calculate the final packing list
	def performEquation

		if !$QUIET then
			puts "performing equation..."
		end

		@spinner.freq = 4
		@spinner.rewind

		for conf in @subsetConfigs do
			handle = File.new "#{$TMPOUT}/" + conf.uniq.to_s +
			 "-" + conf.subsetName + "_final", "r"

			inc = conf.inclusive

			if inc then
				@includeMaps.merge conf.mapHints
				@includeFormats.merge conf.formatHints
			else
				@excludeMaps.merge conf.mapHints
				@excludeFormats.merge conf.formatHints
			end

			for line in handle do
				if inc then
					@includeFiles << line
				else
					@excludeFiles << line
				end
				@spinner.spin	
			end

			handle.close
		end

		if !$QUIET then
			print "\b"
		end

		@finalFiles = @includeFiles.subtract @excludeFiles
		@finalMaps = @includeMaps.subtract @excludeMaps
		@finalFormats = @includeFormats.subtract @excludeFormats

		if !$QUIET then
			puts "includeFiles = #{@includeFiles.size}"
			puts "excludeFiles = #{@excludeFiles.size}"
			puts "includeMaps = #{@includeMaps.size}"
			puts "--"
			puts "excludeMaps = #{@excludeMaps.size}"
			puts "includeFormats = #{@includeFormats.size}"
			puts "excludeFormats = #{@excludeFormats.size}"
			puts "=="
			puts "final = #{@finalFiles.size}"
			puts "finalMaps = #{@finalMaps.size}"
			puts "finalFormats = #{@finalFormats.size}"
		end

	end

	# add directories and their parent directories
	def addDir(basefile)
		dir = File.dirname(basefile)

		# recurse - add parent dirs also
		if (dir != ".") then
			@dirList << dir
			addDir(dir)
		end
	end

	# Write packing list to the output directory
	def writePlist
		File.open("#{$OUTDIR}/PLIST", "w") do |plist|
			for line in @finalFiles do
				line = line.chomp

				ok = true
				if $MISSING_FILES == false then
					filetlm = $TLMASTER + "/" + line
					if (File.exist?(filetlm.chomp) == false)  then
						ok = false
						puts "*warning: missing file ignored: " + filetlm
					end
				end

				if ok then
					plist.write $FILEPREFIX + line + "\n"
					if $ADD_DIRS then
						addDir(line)
					end
				end
			end

			# add directory entries to satisfy openbsd pkgtools
			if $ADD_DIRS then
				for file in @dirList do
					plist.write $FILEPREFIX + file + "/\n"
				end
			end
		end
	end

	# Write the HINTS file to the output directory
	def writeHints()
		time = Time.now.to_s
		hdr = "=" * 72
		shdr = "-" * 10

		File.open("#{$OUTDIR}/HINTS", "w") do |hints|
			hints.puts "Rblatter-#{$RBLATTER_V}"
			hints.puts time
			hints.puts $EQN
			hints.puts hdr
			hints.puts ""

			hints.puts "SUMMARY"
			hints.puts shdr
			hints.puts ""
			hints.puts "includeFiles = #{@includeFiles.size}"
			hints.puts "excludeFiles = #{@excludeFiles.size}"
			hints.puts "includeMaps = #{@includeMaps.size}"
			hints.puts ""

			hints.puts "excludeMaps = #{@excludeMaps.size}"
			hints.puts "includeFormats = " + 
				"#{@includeFormats.size}"
			hints.puts "excludeFormats = " +
				"#{@excludeFormats.size}"
			hints.puts ""

			hints.puts "final = #{@finalFiles.size}"
			hints.puts "finalMaps = #{@finalMaps.size}"
			hints.puts "finalFormats = #{@finalFormats.size}"
			hints.puts ""

			hints.puts "MAP HINTS"
			hints.puts shdr
			hints.puts ""
			
			for map in @finalMaps do
				hints.puts map
			end

			if @finalMaps.size == 0 then
				hints.puts "(No map hints)"
			end

			hints.puts ""
			hints.puts "FORMAT HINTS"
			hints.puts shdr
			hints.puts ""

			for fmt in @finalFormats do 
				hints.puts fmt
			end

			if @finalFormats.size == 0 then
				hints.puts "(No format hints)"
			end


		end
	end

	# Clean up the temp directory
	def clean()
		tmpdir = Dir.open($TMPOUT) do |dir|
			dir.each do |file|
				if file != "." and file != ".." then
					File.unlink $TMPOUT + "/" + file
				end
			end
		end

		Dir.rmdir $TMPOUT
	end

	# Expand a depend line
	def expandLine(line, subset)
		# If a depend expand
		buf = ""
		if line =~ /^depend (.*)/ then

			if(subset.alreadyExpanded? $1) == false then
				buf = @pkgScanner.getContents $1
				buf = @pkgFilter.filterContents buf, subset
				@spinner.spin	

				# Will need another pass
				@again = true
				subset.flagExpanded $1
			end
		else
			buf = line
		end

		buf
	end
end
