# $OpenBSD: Makefile,v 1.29 2019/07/12 20:45:58 sthen Exp $

COMMENT=	simple rake/rubygems helper for project Rakefiles

DISTNAME=	hoe-3.16.1
REVISION =	0
CATEGORIES=	devel

# MIT
PERMIT_PACKAGE=	Yes

MODULES=	lang/ruby

CONFIGURE_STYLE=ruby gem

MODRUBY_TEST =	rake
TEST_DEPENDS =	devel/ruby-minitest,${MODRUBY_FLAVOR},>=5.11.3

.include <bsd.port.mk>
