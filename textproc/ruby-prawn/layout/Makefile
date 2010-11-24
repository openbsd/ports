# $OpenBSD: Makefile,v 1.5 2010/11/24 21:35:16 jeremy Exp $

COMMENT =	Fast, Nimble PDF Generation For Ruby - prawn-layout

DISTNAME=	prawn-layout-0.2.0.1
REVISION =	2

RUN_DEPENDS=            textproc/ruby-prawn/core,${MODRUBY_FLAVOR}

MODRUBY_REGRESS =	rake
REGRESS_DEPENDS =	textproc/ruby-prawn/prawn,${MODRUBY_FLAVOR}

.include <bsd.port.mk>
