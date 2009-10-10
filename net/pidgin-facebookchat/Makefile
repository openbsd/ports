# $OpenBSD: Makefile,v 1.4 2009/10/10 14:12:38 steven Exp $

SHARED_ONLY =	Yes

COMMENT =	Facebook plugin for Pidgin

V =		1.61
DISTNAME =	pidgin-facebookchat-source-${V}
PKGNAME =	pidgin-facebookchat-${V}
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
RUN_DEPENDS =	:libpurple->=2.0.0:net/pidgin
LIB_DEPENDS =	json-glib-1.0.>=1.0:json-glib->=0.7.6:devel/json-glib

MAKE_FLAGS =	LINUX32_COMPILER="${CC}" LOCALBASE=${LOCALBASE}
ALL_TARGET =	libfacebook.so

NO_REGRESS =	Yes

do-install:
	${INSTALL_DATA_DIR} ${PREFIX}/lib/purple-2/
	${INSTALL_DATA} ${WRKBUILD}/libfacebook.so ${PREFIX}/lib/purple-2/
.for i in 16 22 48
	${INSTALL_DATA_DIR} ${PREFIX}/share/pixmaps/pidgin/protocols/${i}/
	${INSTALL_DATA} ${WRKSRC}/facebook${i}.png \
		${PREFIX}/share/pixmaps/pidgin/protocols/${i}/facebook.png
.endfor

.include <bsd.port.mk>
