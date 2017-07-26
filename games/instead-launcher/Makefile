# $OpenBSD: Makefile,v 1.5 2017/07/26 22:45:21 sthen Exp $

COMMENT =		package manager for Instead game engine
V =			0.7.0
DISTNAME =		instead-launcher_${V}
PKGNAME =		${DISTNAME:C/_/-/}
CATEGORIES =		games
HOMEPAGE =		https://instead.syscall.ru/
MAINTAINER =		Roman Yakovlev <obsd@51t.ru>
REVISION =		0

# GPLv2
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB =  ICE QtGui QtNetwork SM X11 Xext Xi Xinerama Xrender
WANTLIB += c fontconfig freetype m pthread ${COMPILER_LIBCXX} z

MASTER_SITES =		${MASTER_SITE_SOURCEFORGE:=instead/}

MODULES	=		x11/qt4 devel/qmake
RUN_DEPENDS =		devel/desktop-file-utils \
			games/instead

NO_TEST =		Yes
WRKDIST =		${WRKDIR}/${PKGNAME}

.include <bsd.port.mk>
