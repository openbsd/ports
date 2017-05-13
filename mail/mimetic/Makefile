# $OpenBSD: Makefile,v 1.8 2017/05/13 09:49:50 espie Exp $

COMMENT =		C++ MIME library

DISTNAME =		mimetic-0.9.8
CATEGORIES =		mail devel
REVISION =		1

SHARED_LIBS =		mimetic	1.0 #0.0

HOMEPAGE =		http://www.codesink.org/mimetic_mime_library.html
MASTER_SITES =		http://www.codesink.org/download/

# MIT
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB +=		m

WANT_CXX =		base gcc

AUTOCONF_VERSION =	2.64
AUTOMAKE_VERSION =	1.11

BUILD_DEPENDS =		${MODGNU_AUTOCONF_DEPENDS} \
			${MODGNU_AUTOMAKE_DEPENDS}

CONFIGURE_STYLE =	gnu

USE_GMAKE =		Yes
MAKE_ENV =		AUTOCONF_VERSION="${AUTOCONF_VERSION}"

.include <bsd.port.mk>
