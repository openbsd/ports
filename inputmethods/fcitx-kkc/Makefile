COMMENT =	libkkc wrapper for fcitx

GH_ACCOUNT =	fcitx
GH_PROJECT =	fcitx-kkc
GH_TAGNAME =	0.1.4

CATEGORIES =	inputmethods japanese

HOMEPAGE =	https://fcitx-im.org/

# GPLv3+
PERMIT_PACKAGE =	Yes

WANTLIB =		glib-2.0 gobject-2.0 intl kkc

MODULES =		devel/cmake

BUILD_DEPENDS =		devel/gettext,-tools \
			inputmethods/fcitx,-main
RUN_DEPENDS =		inputmethods/fcitx,-main \
			x11/gtk+3,-guic
LIB_DEPENDS =		inputmethods/libkkc

CONFIGURE_ARGS =	-DENABLE_QT=Off

NO_TEST =		Yes

.include <bsd.port.mk>
