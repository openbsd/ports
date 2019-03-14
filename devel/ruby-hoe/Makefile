# $OpenBSD: Makefile,v 1.28 2019/03/14 07:41:04 sebastia Exp $

COMMENT=	simple rake/rubygems helper for project Rakefiles

DISTNAME=	hoe-3.16.1
REVISION =	0
CATEGORIES=	devel

# MIT
PERMIT_PACKAGE_CDROM=	Yes

MODULES=	lang/ruby

CONFIGURE_STYLE=ruby gem

MODRUBY_TEST =	rake
TEST_DEPENDS =	devel/ruby-minitest,${MODRUBY_FLAVOR},>=5.11.3

.include <bsd.port.mk>
