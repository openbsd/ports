# $OpenBSD: Makefile,v 1.3 2013/06/08 20:22:57 jturner Exp $

COMMENT =		C++ MIME library

DISTNAME =		mimetic-0.9.7
REVISION =		1
CATEGORIES =		mail devel

SHARED_LIBS =		mimetic	1.0 #0.0

MAINTAINER =		James Turner <james@calminferno.net>

HOMEPAGE =		http://www.codesink.org/mimetic_mime_library.html
MASTER_SITES =		http://www.codesink.org/download/

# MIT
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB +=		m

MODULES =		gcc4

MODGCC4_ARCHS =		*
MODGCC4_LANGS =		c++

AUTOCONF_VERSION =	2.64
AUTOMAKE_VERSION =	1.11

BUILD_DEPENDS =		${MODGNU_AUTOCONF_DEPENDS} \
			${MODGNU_AUTOMAKE_DEPENDS}

CONFIGURE_STYLE =	gnu

USE_GMAKE =		Yes
MAKE_ENV =		AUTOCONF_VERSION="${AUTOCONF_VERSION}"

.include <bsd.port.mk>
