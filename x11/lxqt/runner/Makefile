# $OpenBSD: Makefile,v 1.3 2019/05/05 17:09:08 naddy Exp $

COMMENT =	launch programs quickly by typing their names

VERSION =	0.13.0

NAME =		lxqt-runner
DISTNAME =	${NAME}-${VERSION}
REVISION =	1

WANTLIB += ${COMPILER_LIBCXX} KF5WindowSystem Qt5Core Qt5DBus
WANTLIB += Qt5Gui Qt5Svg Qt5Widgets Qt5X11Extras Qt5Xdg Qt5XdgIconLoader
WANTLIB += Qt5Xml c lxqt lxqt-globalkeys lxqt-globalkeys-ui m

LIB_DEPENDS +=		x11/lxqt/globalkeys \
			devel/kf5/kwindowsystem

BUILD_DEPENDS +=	x11/lxqt/build-tools \
			x11/menu-cache

RUN_DEPENDS +=		x11/menu-cache \
			x11/lxqt/l10n,-runner

CONFIGURE_ARGS +=	-DRUNNER_MATH=No \
			-DPULL_TRANSLATIONS:BOOL=OFF

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/${NAME}
	mv ${WRKINST}${SYSCONFDIR}/xdg ${PREFIX}/share/examples/${NAME}/

.include <bsd.port.mk>
