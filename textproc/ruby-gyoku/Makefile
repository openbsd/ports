# $OpenBSD: Makefile,v 1.2 2016/01/10 20:06:12 jasper Exp $

COMMENT =		Gyoku translates Ruby Hashes to XML

DISTNAME =		gyoku-1.3.1

CATEGORIES =		textproc

# MIT
PERMIT_PACKAGE_CDROM =	Yes

MODULES =		lang/ruby

CONFIGURE_STYLE =	ruby gem

BUILD_DEPENDS =		${RUN_DEPENDS}
RUN_DEPENDS =		textproc/ruby-builder,${MODRUBY_FLAVOR}

# XXX: unported ruby-simplecov
#MODRUBY_TEST =		rspec3
#TEST_DEPENDS =		devel/ruby-bundler,${MODRUBY_FLAVOR} \
#			devel/ruby-simplecov,${MODRUBY_FLAVOR}

.include <bsd.port.mk>
