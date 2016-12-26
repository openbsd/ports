# $OpenBSD: Makefile,v 1.1.1.1 2016/12/26 15:27:26 zhuk Exp $

COMMENT =		package manager for Instead game engine
V =			0.6.3
DISTNAME =		instead-launcher_${V}
PKGNAME =		${DISTNAME:C/_/-/}
CATEGORIES =		games
HOMEPAGE =		https://instead.syscall.ru/
MAINTAINER =		Roman Yakovlev <obsd@51t.ru>

# GPLv2
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB =  ICE QtGui QtNetwork SM X11 Xext Xi Xinerama Xrender
WANTLIB += c fontconfig freetype m pthread stdc++ z

MASTER_SITES =		${MASTER_SITE_SOURCEFORGE:=instead/}

MODULES	=		x11/qt4 devel/qmake
RUN_DEPENDS =		devel/desktop-file-utils \
			games/instead

NO_TEST =		Yes
WRKDIST =		${WRKDIR}/${PKGNAME}

.include <bsd.port.mk>
