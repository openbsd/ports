COMMENT =	policy kit agent for LXQt

NAME =		lxqt-policykit

WANTLIB += ${COMPILER_LIBCXX} GL KF6WindowSystem Qt6Core Qt6DBus
WANTLIB += Qt6Gui Qt6Svg Qt6Widgets Qt6Xdg Qt6XdgIconLoader Qt6Xml
WANTLIB += X11 c gio-2.0 glib-2.0 gobject-2.0 intl lxqt m polkit-agent-1
WANTLIB += polkit-gobject-1 polkit-qt6-agent-1 polkit-qt6-core-1

LIB_DEPENDS =	x11/lxqt/liblxqt \
		x11/polkit-qt

BUILD_DEPENDS =	x11/lxqt/build-tools2

pre-configure:
	${SUBST_CMD} ${WRKSRC}/test/test_agent.sh

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/${NAME}
	mv ${WRKINST}${SYSCONFDIR}/xdg ${PREFIX}/share/examples/${NAME}/

.include <bsd.port.mk>
