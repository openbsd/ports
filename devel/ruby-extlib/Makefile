# $OpenBSD: Makefile,v 1.15 2013/04/23 07:31:17 jasper Exp $

COMMENT =		Ruby extensions serving DataMapper and DataObjects

DISTNAME =		extlib-0.9.16
CATEGORIES =		devel

# MIT
PERMIT_PACKAGE_CDROM = 	Yes

MODULES =		lang/ruby

CONFIGURE_STYLE =	ruby gem

MODRUBY_TEST =		rake rspec
TEST_DEPENDS =		converters/ruby-json,${MODRUBY_FLAVOR} \
			devel/ruby-jeweler,${MODRUBY_FLAVOR}>=1.8.4

.include <bsd.port.mk>
