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
# $Id: subsetconf.rb,v 1.2 2011/03/08 00:09:42 edd Exp $
#
# Holds a subset configuration

require "set"

# A number used to keep temp files unique
$SUBSET_UNIQ = 0

class SubsetConf

	attr_reader :subsetName

	attr_writer :useDocFiles
	attr_reader :useDocFiles

	attr_writer :useRunFiles
	attr_reader :useRunFiles

	attr_writer :useSrcFiles
	attr_reader :useSrcFiles

	attr_writer :useBinFiles
	attr_reader :useBinFiles

	attr_writer :mapHints
	attr_reader :mapHints

	attr_writer :formatHints
	attr_reader :formatHints

	attr_reader :inclusive

	attr_reader :uniq

	# Create a new subset configuration
	# * +name+ is the filename of the top level tlpdb index.
	# * +inclusive+ is whether this is additive or subtractive
	def initialize(name, inclusive = true)
		@subsetName = name
		@useDocFiles = false
		@useRunFiles = false
		@useSrcFiles = false
		@useBinFiles = false
		@inclusive = inclusive # add/subtract
		@alreadyExpanded = []
		@mapHints = Set.new
		@formatHints = Set.new
		@uniq = $SUBSET_UNIQ
		$SUBSET_UNIQ += 1
	end

	# Has this package already been expanded?
	def alreadyExpanded?(name)
		ret =  @alreadyExpanded.index name

		if ret == nil
			return false
		end

		return true 
	end

	# Set this package 'name' as expanded already
	def flagExpanded(name)
		@alreadyExpanded << name
	end

	# Turn on various file types for inclusion
	def enableFileType(type)
		if type == "doc" then
			@useDocFiles = true;
		elsif type == "run" then
			@useRunFiles = true;
		elsif type == "src" then
			@useSrcFiles = true;
		elsif type == "bin" then
			@useBinFiles = true;
		else
			puts "*error: bad filetype: #{type}"
			exit 1
		end
	end
end
