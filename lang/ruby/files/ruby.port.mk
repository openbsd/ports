# $OpenBSD: ruby.port.mk,v 1.2 2002/12/09 20:26:36 couderc Exp $

# ruby module

RUN_DEPENDS+=::lang/ruby
LIB_DEPENDS+=ruby.1.66::lang/ruby

MODRUBY_LIBDIR=		${LOCALBASE}/lib/ruby
MODRUBY_DOCDIR=		${PREFIX}/share/doc/ruby
MODRUBY_EXAMPLEDIR=	${PREFIX}/share/examples/ruby

CONFIGURE_STYLE?=	simple
CONFIGURE_SCRIPT?=	${LOCALBASE}/bin/ruby extconf.rb
