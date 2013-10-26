# $OpenBSD: Makefile,v 1.17 2013/10/26 23:55:35 jeremy Exp $

COMMENT =		Ruby extensions serving DataMapper and DataObjects

DISTNAME =		extlib-0.9.16
REVISION =		0
CATEGORIES =		devel

# MIT
PERMIT_PACKAGE_CDROM = 	Yes

MODULES =		lang/ruby

CONFIGURE_STYLE =	ruby gem

MODRUBY_TEST =		rake rspec
TEST_DEPENDS =		devel/ruby-json_pure,${MODRUBY_FLAVOR} \
			devel/ruby-jeweler,${MODRUBY_FLAVOR}>=1.8.4

.include <bsd.port.mk>
