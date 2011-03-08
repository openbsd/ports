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
# $Id: spinner.rb,v 1.2 2011/03/08 00:09:42 edd Exp $
#
# A pretty spinner

class Spinner

	attr_writer :freq

	def initialize()
		@@states = {
			0 => "|",
			1 => "/",
			2 => "-",
			3 => "\\",
			4 => "|",
			5 => "/",
			6 => "-",
			7 => "\\",
		}

		@state = 0
		@freq = 1 # How often to spin
		@clock = 0;
	end

	# One spinner "tick"
	def spin()

		if $QUIET then
			return
		end

		@clock = @clock.next

		if @clock % @freq != 0 then
			return
		end

		@clock = 0 # reset freq cycle

		print "\b#{@@states[@state]}"
		$stdout.flush
		@state = @state.next
		if @state == 8 then
			@state = 0
		end
	end

	# Start again
	def rewind
		@state = 0

		if !$QUIET then
			print " "
		end
	end
end
