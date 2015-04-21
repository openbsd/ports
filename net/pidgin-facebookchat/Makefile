# $OpenBSD: Makefile,v 1.18 2015/04/21 18:24:23 sthen Exp $

SHARED_ONLY =	Yes

COMMENT =	Facebook plugin for Pidgin

V =		1.68
DISTNAME =	pidgin-facebookchat-source-${V}
PKGNAME =	pidgin-facebookchat-${V}
REVISION =	4
CATEGORIES =	net

HOMEPAGE =	https://code.google.com/p/pidgin-facebookchat/

# GPL v3
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB += json-glib-1.0>=1.0 pthread

MASTER_SITES =	https://pidgin-facebookchat.googlecode.com/files/
EXTRACT_SUFX =	.tar.bz2

WRKDIST =	${WRKDIR}/pidgin-facebookchat

BUILD_DEPENDS =	${RUN_DEPENDS}
RUN_DEPENDS =	net/pidgin>=2.0.0
LIB_DEPENDS =	devel/json-glib>=0.7.6

MAKE_FLAGS =	LINUX32_COMPILER="${CC}" LOCALBASE=${LOCALBASE}
ALL_TARGET =	libfacebook.so

NO_TEST =	Yes

do-install:
	${INSTALL_DATA_DIR} ${PREFIX}/lib/purple-2/
	${INSTALL_DATA} ${WRKBUILD}/libfacebook.so ${PREFIX}/lib/purple-2/

.include <bsd.port.mk>
