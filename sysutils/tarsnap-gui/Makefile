# $OpenBSD: Makefile,v 1.8 2016/12/25 14:34:40 zhuk Exp $

COMMENT = 		frontend to the popular Tarsnap backup service

V = 			0.9
DISTNAME =		tarsnap-gui-${V}
CATEGORIES =		sysutils
REVISION =		0

MAINTAINER =		Josh Grosse <josh@jggimi.homeip.net>

# BSD
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB += 		GL Qt5Core Qt5Gui Qt5Network Qt5Sql Qt5Widgets c m
WANTLIB += 		pthread

GH_ACCOUNT =		Tarsnap
GH_PROJECT =		tarsnap-gui
GH_TAGNAME =		v${V}

MODULES =		devel/qmake x11/qt5
RUN_DEPENDS =		sysutils/tarsnap

do-install:
	${INSTALL_PROGRAM} ${WRKBUILD}/tarsnap-gui ${PREFIX}/bin/tarsnap-gui

.include <bsd.port.mk>
