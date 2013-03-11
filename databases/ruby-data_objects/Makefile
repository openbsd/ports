# $OpenBSD: Makefile,v 1.14 2013/03/11 02:52:08 espie Exp $

COMMENT =	unified Ruby API for popular databases

DISTNAME =	data_objects-0.10.8
REVISION =	0
CATEGORIES =	databases

# MIT
PERMIT_PACKAGE_CDROM = Yes

MODULES =		lang/ruby

BUILD_DEPENDS =		${RUN_DEPENDS}
RUN_DEPENDS =		www/ruby-addressable,${MODRUBY_FLAVOR} \
			devel/ruby-extlib,${MODRUBY_FLAVOR}

CONFIGURE_STYLE =	ruby gem

MODRUBY_TEST =	rake rspec2
TEST_DEPENDS =	devel/ruby-mocha,${MODRUBY_FLAVOR} \
			devel/ruby-bacon,${MODRUBY_FLAVOR} \
			devel/ruby-bundler,${MODRUBY_FLAVOR}

.include <bsd.port.mk>
