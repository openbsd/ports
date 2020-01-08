# $OpenBSD: Makefile,v 1.30 2020/01/08 19:13:08 jeremy Exp $

COMMENT=	simple rake/rubygems helper for project Rakefiles

DISTNAME=	hoe-3.20.0
CATEGORIES=	devel

# MIT
PERMIT_PACKAGE=	Yes

MODULES=	lang/ruby

CONFIGURE_STYLE=ruby gem

MODRUBY_TEST =	rake
TEST_DEPENDS =	devel/ruby-minitest,${MODRUBY_FLAVOR},>=5.11.3

.include <bsd.port.mk>
