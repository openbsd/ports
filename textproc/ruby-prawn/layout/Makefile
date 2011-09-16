# $OpenBSD: Makefile,v 1.7 2011/09/16 11:41:42 espie Exp $

COMMENT =	Fast, Nimble PDF Generation For Ruby - prawn-layout

DISTNAME=	prawn-layout-0.2.0.1
REVISION =	4

RUN_DEPENDS=            textproc/ruby-prawn/core,${MODRUBY_FLAVOR}

MODRUBY_REGRESS =	rake
REGRESS_DEPENDS =	textproc/ruby-prawn/prawn,${MODRUBY_FLAVOR}

.include <bsd.port.mk>
