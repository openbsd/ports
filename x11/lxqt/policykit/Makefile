# $OpenBSD: Makefile,v 1.6 2020/09/10 13:32:37 mariani Exp $

COMMENT =	policy kit agent for LXQt

VERSION =	0.15.0
REVISION =      0

NAME =		lxqt-policykit
DISTNAME =	${NAME}-${VERSION}

WANTLIB += ${COMPILER_LIBCXX} KF5WindowSystem Qt5Core Qt5DBus
WANTLIB += Qt5Gui Qt5Svg Qt5Widgets Qt5X11Extras Qt5Xdg Qt5XdgIconLoader
WANTLIB += Qt5Xml c gio-2.0 glib-2.0 gobject-2.0 intl lxqt m polkit-agent-1
WANTLIB += polkit-gobject-1 polkit-qt5-agent-1 polkit-qt5-core-1

LIB_DEPENDS +=		x11/lxqt/liblxqt \
			x11/polkit-qt5

BUILD_DEPENDS +=	x11/lxqt/build-tools

pre-configure:
	${SUBST_CMD} ${WRKSRC}/test/test_agent.sh

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/${NAME}
	mv ${WRKINST}${SYSCONFDIR}/xdg ${PREFIX}/share/examples/${NAME}/

.include <bsd.port.mk>
