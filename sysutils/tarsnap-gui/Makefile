# $OpenBSD: Makefile,v 1.5 2016/03/07 10:52:30 zhuk Exp $

COMMENT = 		frontend to the popular Tarsnap backup service

V = 			0.8
DISTNAME =		tarsnap-gui-${V}
CATEGORIES =		sysutils

HOMEPAGE =		https://github.com/Tarsnap/tarsnap-gui/wiki/Tarsnap
MAINTAINER =		Josh Grosse <josh@jggimi.homeip.net>

# BSD
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB += 		GL Qt5Core Qt5Gui Qt5Network Qt5Sql Qt5Widgets c m
WANTLIB += 		pthread

GH_ACCOUNT =		Tarsnap
GH_PROJECT =		tarsnap-gui
GH_TAGNAME =		v${V}

MODULES =		x11/qt5
CONFIGURE_STYLE =	qmake
RUN_DEPENDS =		sysutils/tarsnap

do-install:
	${INSTALL_PROGRAM} ${WRKBUILD}/tarsnap-gui ${PREFIX}/bin/tarsnap-gui

.include <bsd.port.mk>
