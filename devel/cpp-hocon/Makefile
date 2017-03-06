# $OpenBSD: Makefile,v 1.4 2017/03/06 18:03:57 jasper Exp $

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
			devel/gettext-tools \
			devel/leatherman \
			net/curl

.include <bsd.port.mk>
