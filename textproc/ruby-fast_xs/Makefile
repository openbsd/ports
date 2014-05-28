# $OpenBSD: Makefile,v 1.1.1.1 2014/05/28 22:00:15 jeremy Exp $

COMMENT =		provides fast methods for escaping text

DISTNAME =		fast_xs-0.8.0
CATEGORIES =		textproc

HOMEPAGE =		https://github.com/brianmario/fast_xs

MAINTAINER =		Jeremy Evans <jeremy@openbsd.org>

# MIT
PERMIT_PACKAGE_CDROM =	Yes

MODULES =		lang/ruby

CONFIGURE_STYLE =	ruby gem ext

MODRUBY_TEST =		testrb
MODRUBY_TEST_ENV =	RUBYOPT=-rubygems
TEST_DEPENDS =		${FULLPKGNAME}:${BUILD_PKGPATH} \
			www/ruby-rack,${MODRUBY_FLAVOR}

.include <bsd.port.mk>
