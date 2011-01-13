# $OpenBSD: Makefile,v 1.13 2011/01/13 10:29:27 jasper Exp $

SHARED_ONLY =	Yes

COMMENT =	Facebook plugin for Pidgin

V =		1.68
DISTNAME =	pidgin-facebookchat-source-${V}
PKGNAME =	pidgin-facebookchat-${V}
REVISION =	0
CATEGORIES =	net

HOMEPAGE =	http://code.google.com/p/pidgin-facebookchat/

MAINTAINER =	Steven Mestdagh <steven@openbsd.org>

# GPL v3
PERMIT_PACKAGE_FTP =	Yes
PERMIT_PACKAGE_CDROM =	Yes
PERMIT_DISTFILES_FTP =	Yes
PERMIT_DISTFILES_CDROM =	Yes

MASTER_SITES =	http://pidgin-facebookchat.googlecode.com/files/
EXTRACT_SUFX =	.tar.bz2

WRKDIST =	${WRKDIR}/pidgin-facebookchat

BUILD_DEPENDS =	${RUN_DEPENDS}
RUN_DEPENDS =	net/pidgin>=2.0.0
LIB_DEPENDS =	devel/json-glib>=0.7.6
WANTLIB =	json-glib-1.0>=1.0

MAKE_FLAGS =	LINUX32_COMPILER="${CC}" LOCALBASE=${LOCALBASE}
ALL_TARGET =	libfacebook.so

NO_REGRESS =	Yes

do-install:
	${INSTALL_DATA_DIR} ${PREFIX}/lib/purple-2/
	${INSTALL_DATA} ${WRKBUILD}/libfacebook.so ${PREFIX}/lib/purple-2/

.include <bsd.port.mk>
