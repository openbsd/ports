# $OpenBSD: Makefile,v 1.14 2013/03/11 10:50:29 espie Exp $

COMMENT =	Ruby extensions serving DataMapper and DataObjects

DISTNAME =	extlib-0.9.15
REVISION =	2
CATEGORIES =	devel

# MIT
PERMIT_PACKAGE_CDROM = Yes

MODULES =		lang/ruby

CONFIGURE_STYLE =	ruby gem

MODRUBY_TEST =	rake rspec
TEST_DEPENDS =	converters/ruby-json,${MODRUBY_FLAVOR} \
			devel/ruby-jeweler,${MODRUBY_FLAVOR}

.include <bsd.port.mk>
