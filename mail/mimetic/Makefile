# $OpenBSD: Makefile,v 1.1.1.1 2013/05/13 23:15:47 jturner Exp $

COMMENT =		C++ MIME library

DISTNAME =		mimetic-0.9.7
CATEGORIES =		mail devel

SHARED_LIBS =		mimetic	0.0 #0.0

MAINTAINER =		James Turner <james@calminferno.net>

HOMEPAGE =		http://www.codesink.org/mimetic_mime_library.html
MASTER_SITES =		http://www.codesink.org/download/

# MIT
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB =		m stdc++

AUTOCONF_VERSION =	2.64
AUTOMAKE_VERSION =	1.11

BUILD_DEPENDS =		${MODGNU_AUTOCONF_DEPENDS} \
			${MODGNU_AUTOMAKE_DEPENDS}

CONFIGURE_STYLE =	gnu

USE_GMAKE =		Yes
MAKE_ENV =		AUTOCONF_VERSION="${AUTOCONF_VERSION}"

.include <bsd.port.mk>
