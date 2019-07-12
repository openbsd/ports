# $OpenBSD: Makefile,v 1.13 2019/07/12 20:47:30 sthen Exp $

COMMENT =		C++ MIME library

DISTNAME =		mimetic-0.9.8
CATEGORIES =		mail devel
REVISION =		3

SHARED_LIBS =		mimetic	1.0 #0.0

HOMEPAGE =		http://www.codesink.org/mimetic_mime_library.html
MASTER_SITES =		http://www.codesink.org/download/

# MIT
PERMIT_PACKAGE =	Yes

WANTLIB +=		m
WANTLIB += ${COMPILER_LIBCXX}

COMPILER =		base-clang ports-gcc

AUTOCONF_VERSION =	2.64
AUTOMAKE_VERSION =	1.11

BUILD_DEPENDS =		${MODGNU_AUTOCONF_DEPENDS} \
			${MODGNU_AUTOMAKE_DEPENDS}

CONFIGURE_STYLE =	gnu

USE_GMAKE =		Yes
MAKE_ENV =		AUTOCONF_VERSION="${AUTOCONF_VERSION}"

.include <bsd.port.mk>
