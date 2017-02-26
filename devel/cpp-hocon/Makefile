# $OpenBSD: Makefile,v 1.2 2017/02/26 10:52:46 jasper Exp $

COMMENT =		C++ parser for the HOCON configuration language

GH_TAGNAME =		0.1.5
GH_ACCOUNT =		puppetlabs
GH_PROJECT =		cpp-hocon

CATEGORIES =		devel

MAINTAINER =		Jasper Lievisse Adriaanse <jasper@openbsd.org>

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
