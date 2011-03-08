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
# $Id: pkgscanner.rb,v 1.2 2011/03/08 00:09:42 edd Exp $
#
# Takes packages from tlpdb

require "tlpdbindex"

class PkgScanner

	# Create a new subset shaper and index the tlpdb database
	def initialize()
		# tlpdb directives to remove
		@tlpdb = File.new $TLMASTER + "/tlpkg/texlive.tlpdb"
		@dbIndex = TlpdbIndex.new @tlpdb
	end

	# Return the contents of a single package
	def getContents(indexName)

		indexName.sub!(/ARCH/, $ARCH)

		seekLine = @dbIndex.index[indexName]

		if seekLine == nil then
			puts "\b*warning: package not found: #{indexName}"
			return ""
		end

		@tlpdb.rewind

		# Seek to right line
		for x in (1..seekLine - 1) do
			@tlpdb.readline
		end

		buf = ""

		begin
			line = @tlpdb.readline
			if line.strip != ""
				buf = buf + line
			end
		end while line.strip != ""

		buf
	end
end
