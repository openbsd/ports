# $OpenBSD: Makefile,v 1.3 2018/10/09 07:09:53 rsadowski Exp $

COMMENT =		tools to compute hashes recursively

GH_ACCOUNT =		jessek
GH_PROJECT =		hashdeep
GH_TAGNAME =		v4.4
REVISION =		0

CATEGORIES =		security

MAINTAINER =		Ingo Feinerer <feinerer@logic.at>

# Public domain, and the code for Tiger is GPLv2.
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB += ${COMPILER_LIBCXX} c m

# C++11 nullptr
COMPILER = base-clang ports-clang ports-gcc

BUILD_DEPENDS =		${MODGNU_AUTOCONF_DEPENDS} \
			${MODGNU_AUTOMAKE_DEPENDS}

USE_GMAKE =		Yes
CONFIGURE_STYLE =	gnu

AUTOCONF_VERSION =	2.69
AUTOMAKE_VERSION =	1.15

NO_TEST =		Yes

CXXFLAGS =		-std=c++11

pre-configure:
	cd ${WRKSRC} && \
		AUTOCONF_VERSION=${AUTOCONF_VERSION} \
		AUTOMAKE_VERSION=${AUTOMAKE_VERSION} \
		autoreconf -i

.include <bsd.port.mk>
