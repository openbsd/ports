COMMENT =	libkkc wrapper for fcitx5

DISTNAME =	fcitx5-kkc-5.1.5
PKGNAME =	${DISTNAME:S/fcitx5/fcitx/}

CATEGORIES =	inputmethods japanese

HOMEPAGE =	https://github.com/fcitx/fcitx5-kkc

SITES =		https://download.fcitx-im.org/fcitx5/fcitx5-kkc/
EXTRACT_SUFX =	.tar.zst

MAINTAINER =	Yifei Zhan <openbsd@zhan.science>

# GPLv3.0 or later
PERMIT_PACKAGE=	Yes

WANTLIB += ${COMPILER_LIBCXX} Fcitx5Config Fcitx5Core Fcitx5Qt6WidgetsAddons
WANTLIB += Fcitx5Utils GL Qt6Core Qt6Gui Qt6Widgets gee-0.8 gio-2.0
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

.include <bsd.port.mk>
