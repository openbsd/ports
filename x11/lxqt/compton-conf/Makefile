# $OpenBSD: Makefile,v 1.6 2021/11/22 05:45:42 rsadowski Exp $

COMMENT =	configuration tool for compton X composite manager

VERSION =	0.15.0
REVISION =      0

NAME =		compton-conf

WANTLIB += ${COMPILER_LIBCXX} Qt5Core Qt5DBus Qt5Gui Qt5Widgets
WANTLIB += c config m

LIB_DEPENDS +=		devel/libconfig

BUILD_DEPENDS +=	x11/lxqt/build-tools

RUN_DEPENDS +=		devel/desktop-file-utils

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/${NAME}
	mv ${WRKINST}${SYSCONFDIR}/xdg ${PREFIX}/share/examples/${NAME}/

.include <bsd.port.mk>
