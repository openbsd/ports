# $OpenBSD: Makefile,v 1.3 2017/02/27 19:40:19 jasper Exp $

COMMENT =		C++ parser for the HOCON configuration language

GH_TAGNAME =		0.1.5
GH_ACCOUNT =		puppetlabs
GH_PROJECT =		cpp-hocon
REVISION =		0

CATEGORIES =		devel

MAINTAINER =		Sebastian Reitenbach <sebastia@openbsd.org>

# Apachev2
PERMIT_PACKAGE_CDROM =	Yes

MODULES =		devel/cmake \
			gcc4
MODGCC4_ARCHS =		*
MODGCC4_LANGS =		c++

CXXFLAGS +=		-pthread

BUILD_DEPENDS =		devel/boost \
			devel/leatherman \
			net/curl

.include <bsd.port.mk>
