# $OpenBSD: Makefile,v 1.1.1.1 2009/10/13 15:09:16 pirofti Exp $

COMMENT =	Fast, Nimble PDF Generation For Ruby - prawn-format

DISTNAME =	prawn-format-0.2.0.1
PKGNAME =	ruby-${DISTNAME}

RUN_DEPENDS =            ::textproc/ruby-prawn/core

MODRUBY_REGRESS =	rake
REGRESS_DEPENDS =	::devel/ruby-echoe \
			::textproc/ruby-prawn/prawn

.include <bsd.port.mk>
