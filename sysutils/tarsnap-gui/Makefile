# $OpenBSD: Makefile,v 1.10 2017/07/27 10:05:20 sthen Exp $

COMMENT = 		frontend to the popular Tarsnap backup service

V = 			0.9
DISTNAME =		tarsnap-gui-${V}
CATEGORIES =		sysutils
REVISION =		2

MAINTAINER =		Josh Grosse <josh@jggimi.net>

# BSD
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB += 		GL Qt5Core Qt5Gui Qt5Network Qt5Sql Qt5Widgets c m
WANTLIB += 		pthread
WANTLIB += ${COMPILER_LIBCXX}

GH_ACCOUNT =		Tarsnap
GH_PROJECT =		tarsnap-gui
GH_TAGNAME =		v${V}

MODULES =		devel/qmake x11/qt5
RUN_DEPENDS =		sysutils/tarsnap

do-install:
	${INSTALL_PROGRAM} ${WRKBUILD}/tarsnap-gui ${PREFIX}/bin/tarsnap-gui

.include <bsd.port.mk>
