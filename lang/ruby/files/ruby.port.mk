# $OpenBSD: ruby.port.mk,v 1.3 2002/12/09 21:04:08 couderc Exp $

# ruby module

RUN_DEPENDS+=::lang/ruby
LIB_DEPENDS+=ruby.1.66::lang/ruby

# location of ruby libraries
MODRUBY_LIBDIR=		${LOCALBASE}/lib/ruby

# common directories for ruby extensions
# used to create docs and examples install path
MODRUBY_DOCDIR=		${PREFIX}/share/doc/ruby
MODRUBY_EXAMPLEDIR=	${PREFIX}/share/examples/ruby

CONFIGURE_STYLE?=	simple
CONFIGURE_SCRIPT?=	${LOCALBASE}/bin/ruby extconf.rb
