BROKEN =	Depends on libva
COMMENT =	components relating to pipewire use in Plasma
DISTNAME =	kpipewire-${VERSION}

SHARED_LIBS +=  KPipeWire                 0.0 # 0.0
SHARED_LIBS +=  KPipeWireDmaBuf           0.0 # 0.0
SHARED_LIBS +=  KPipeWireRecord           0.0 # 0.0

MODKDE_TRANSLATIONS =	Yes

RUN_DEPENDS =	multimedia/pipewire/pipewire

LIB_DEPENDS =	devel/kf6/kcoreaddons \
		devel/kf6/ki18n \
		graphics/ffmpeg \
		multimedia/pipewire/pipewire,-libs \
		x11/qt6/qtdeclarative

TEST_IS_INTERACTIVE =	X11

DEBUG_PACKAGES =	${BUILD_PACKAGES}

.include <bsd.port.mk>
