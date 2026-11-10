COMMENT =	QML based X11 and Wayland display manager

DISTNAME =	opensddm-0.21.2

CATEGORIES =	x11 wayland

MAINTAINER =	Rafael Sadowski <rsadowski@openbsd.org>

# GPLv2
PERMIT_PACKAGE =	Yes

SITES =		https://rsadowski.de/pub/distfiles/

WANTLIB += ${COMPILER_LIBCXX} GL Qt6Core Qt6DBus Qt6Gui Qt6Network
WANTLIB += Qt6OpenGL Qt6Qml Qt6Quick Xau c m pam xcb xcb-xkb

MODULES =		devel/cmake \
			x11/qt6

RUN_DEPENDS =		wayland/weston

BUILD_DEPENDS =		textproc/py-docutils \
			devel/kf6/extra-cmake-modules

LIB_DEPENDS +=		security/openpam \
			x11/qt6/qtdeclarative

CONFIGURE_ARGS=		-DSTATE_DIR=${BASELOCALSTATEDIR}/db/opensddm \
			-DCONFIG_FILE=${SYSCONFDIR}/opensddm/opensddm.conf \
			-DCONFIG_DIR=${SYSCONFDIR}/opensddm/opensddm.conf.d \
			-DCMAKE_INSTALL_SYSCONFDIR:PATH=${SYSCONFDIR} \
			-DRST2MAN_EXECUTABLE=${LOCALBASE}/bin/rst2man

CXXFLAGS +=		-I${LOCALBASE}/include/ -I${X11BASE}/include/

WRKDIST =		${WRKDIR}/${PKGSTEM}

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/opensddm/etc/pam.d
	${INSTALL_DATA} ${WRKSRC}/data/pam/{opensddm,opensddm-autologin,opensddm-greeter} \
		${PREFIX}/share/examples/opensddm/etc/pam.d
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/opensddm/etc/opensddm
	${INSTALL_DATA} ${WRKSRC}/data/{locale.conf,opensddm.conf,locale.conf} \
		${PREFIX}/share/examples/opensddm/etc/opensddm/

.include <bsd.port.mk>
