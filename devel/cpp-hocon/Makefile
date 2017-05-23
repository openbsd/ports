# $OpenBSD: Makefile,v 1.5 2017/05/23 20:53:27 espie Exp $

COMMENT =		C++ parser for the HOCON configuration language

GH_TAGNAME =		0.1.5
GH_ACCOUNT =		puppetlabs
GH_PROJECT =		cpp-hocon
REVISION =		0

CATEGORIES =		devel

MAINTAINER =		Sebastian Reitenbach <sebastia@openbsd.org>

# Apachev2
PERMIT_PACKAGE_CDROM =	Yes

MODULES =		devel/cmake
WANTLIB =		${LIBECXX}

WANT_CXX =		base gcc

CXXFLAGS +=		-pthread

BUILD_DEPENDS =		devel/boost \
			devel/gettext-tools \
			devel/leatherman \
			net/curl

.include <bsd.port.mk>
