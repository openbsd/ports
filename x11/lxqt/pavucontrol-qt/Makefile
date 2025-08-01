COMMENT =	pulseaudio mixer in qt

NAME =		pavucontrol-qt

WANTLIB += ${COMPILER_LIBCXX} GL Qt6Core Qt6Gui Qt6Widgets c glib-2.0
WANTLIB += intl m pulse pulse-mainloop-glib

LIB_DEPENDS =	audio/pulseaudio

RUN_DEPENDS =	devel/desktop-file-utils

.include <bsd.port.mk>
