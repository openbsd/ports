# $OpenBSD: ruby.port.mk,v 1.1 2002/03/17 22:29:02 couderc Exp $

# ruby module

RUN_DEPENDS+=::lang/ruby
LIB_DEPENDS+=ruby.1.66::lang/ruby

MODRUBY_LIBDIR=	${LOCALBASE}/lib/ruby

CONFIGURE_STYLE?=	simple
CONFIGURE_SCRIPT?=	${LOCALBASE}/bin/ruby extconf.rb
