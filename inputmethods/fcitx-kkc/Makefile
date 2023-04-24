COMMENT =	libkkc wrapper for fcitx5

V =		5.0.12
PKGNAME =	fcitx-kkc-$V
REVISION =      0

GH_ACCOUNT =    fcitx
GH_PROJECT =    fcitx5-kkc
GH_TAGNAME =    $V

CATEGORIES =	inputmethods japanese

HOMEPAGE =	https://github.com/fcitx/fcitx5-kkc

MAINTAINER =	Yifei Zhan <openbsd@zhan.science>

# GPLv3.0 or later
PERMIT_PACKAGE=	Yes

WANTLIB += ${COMPILER_LIBCXX} Fcitx5Config Fcitx5Core Fcitx5Qt5WidgetsAddons
WANTLIB += Fcitx5Utils Qt5Core Qt5Gui Qt5Widgets gee-0.8 gio-2.0
WANTLIB += glib-2.0 gobject-2.0 intl json-glib-1.0 kkc m

MODULES =       devel/kf5

BUILD_DEPENDS =		devel/gettext,-tools \
			inputmethods/fcitx \
			devel/iso-codes

RUN_DEPENDS =		devel/desktop-file-utils \
			inputmethods/libkkc-data \
			misc/shared-mime-info \
			x11/gtk+4,-guic

LIB_DEPENDS =		inputmethods/fcitx \
			inputmethods/fcitx-qt \
			inputmethods/libkkc

pre-configure:
	${SUBST_CMD} ${WRKSRC}/CMakeLists.txt

# ninja: error: unknown target 'test'
NO_TEST =		Yes

.include <bsd.port.mk>
