# $OpenBSD: Makefile,v 1.2 2010/09/23 22:30:29 jeremy Exp $

COMMENT =	Fast, Nimble PDF Generation For Ruby - prawn-format

DISTNAME =	prawn-format-0.2.0.1
PKGNAME =	ruby-${DISTNAME}
REVISION =	0

RUN_DEPENDS =            ::textproc/ruby-prawn/core

MODRUBY_REGRESS =	rake
REGRESS_DEPENDS =	::devel/ruby-echoe \
			::textproc/ruby-prawn/prawn

.include <bsd.port.mk>
