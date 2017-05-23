# $OpenBSD: Makefile,v 1.8 2017/05/23 20:18:45 espie Exp $

COMMENT =		collection of C++ and CMake utility libraries

GH_ACCOUNT =		puppetlabs
GH_PROJECT =		leatherman
GH_TAGNAME =		0.12.1

CATEGORIES =		devel

MAINTAINER =		Sebastian Reitenbach <sebastia@openbsd.org>

# Apachev2
PERMIT_PACKAGE_CDROM =	Yes

MODULES =		devel/cmake

WANT_CXX =		base gcc
WANTLIB +=		${LIBECXX}

BUILD_DEPENDS =		devel/boost \
			devel/gettext-tools \
			net/curl

# cmake tests are botched
CONFIGURE_ARGS +=	-DLEATHERMAN_ENABLE_TESTING:Bool=No

CXXFLAGS +=		-pthread 

NO_TEST =		Yes

.include <bsd.port.mk>
