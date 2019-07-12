# $OpenBSD: Makefile,v 1.18 2019/07/12 21:15:34 sthen Exp $

COMMENT =		Ruby extensions serving DataMapper and DataObjects

DISTNAME =		extlib-0.9.16
REVISION =		0
CATEGORIES =		devel

# MIT
PERMIT_PACKAGE =	Yes

MODULES =		lang/ruby

CONFIGURE_STYLE =	ruby gem

MODRUBY_TEST =		rake rspec
TEST_DEPENDS =		devel/ruby-json_pure,${MODRUBY_FLAVOR} \
			devel/ruby-jeweler,${MODRUBY_FLAVOR}>=1.8.4

.include <bsd.port.mk>
