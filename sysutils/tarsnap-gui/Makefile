# $OpenBSD: Makefile,v 1.7 2016/05/30 21:31:16 jturner Exp $

COMMENT = 		frontend to the popular Tarsnap backup service

V = 			0.9
DISTNAME =		tarsnap-gui-${V}
CATEGORIES =		sysutils

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
