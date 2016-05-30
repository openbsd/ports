# $OpenBSD: Makefile,v 1.1.1.1 2016/05/30 13:07:19 jasper Exp $

COMMENT =		collection of C++ and CMake utility libraries

GH_ACCOUNT =		puppetlabs
GH_PROJECT =		leatherman
GH_TAGNAME =		0.7.0

CATEGORIES =		devel

MAINTAINER =		Jasper Lievisse Adriaanse <jasper@openbsd.org>

# Apachev2
PERMIT_PACKAGE_CDROM =	Yes

MODULES =		devel/cmake \
			gcc4

MODGCC4_ARCHS =		*
MODGCC4_LANGS +=	c++

BUILD_DEPENDS =		devel/boost \
			net/curl

# cmake tests are botched
CONFIGURE_ARGS +=	-DLEATHERMAN_ENABLE_TESTING:Bool=No

CXXFLAGS +=		-pthread

NO_TEST =		Yes

.include <bsd.port.mk>
