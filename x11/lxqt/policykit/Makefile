# $OpenBSD: Makefile,v 1.2 2019/03/08 20:00:48 cwen Exp $

COMMENT =	policy kit agent for LXQt

VERSION =	0.13.0

NAME =		lxqt-policykit
DISTNAME =	${NAME}-${VERSION}
REVISION =	0

WANTLIB += ${COMPILER_LIBCXX} KF5WindowSystem Qt5Core Qt5DBus
WANTLIB += Qt5Gui Qt5Svg Qt5Widgets Qt5X11Extras Qt5Xdg Qt5XdgIconLoader
WANTLIB += Qt5Xml c gio-2.0 glib-2.0 gobject-2.0 intl lxqt m polkit-agent-1
WANTLIB += polkit-gobject-1 polkit-qt5-agent-1 polkit-qt5-core-1

LIB_DEPENDS +=		x11/lxqt/liblxqt \
			x11/polkit-qt,qt5

BUILD_DEPENDS +=	x11/lxqt/build-tools

RUN_DEPENDS +=		x11/lxqt/l10n,-policykit

CONFIGURE_ARGS +=	-DPULL_TRANSLATIONS:BOOL=OFF

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/${NAME}
	mv ${WRKINST}${SYSCONFDIR}/xdg ${PREFIX}/share/examples/${NAME}/

.include <bsd.port.mk>
