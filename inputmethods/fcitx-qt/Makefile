COMMENT =	Qt library and IM module for fcitx5

DISTNAME =	fcitx5-qt-5.0.9
PKGNAME =	${DISTNAME:S/fcitx5/fcitx/}
REVISION =	0

SHARED_LIBS +=	Fcitx5Qt5WidgetsAddons		0.0 # 0.0
SHARED_LIBS +=	Fcitx5Qt5DBusAddons		0.0 # 0.0

CATEGORIES =	inputmethods

HOMEPAGE =	https://fcitx-im.org/

MAINTAINER =	Yifei Zhan <openbsd@zhan.science>

# BSD for plugins
# LGPL2.1+ for other files
PERMIT_PACKAGE=	Yes

WANTLIB += ${COMPILER_LIBCXX} Fcitx5Utils Qt5Concurrent Qt5Core
WANTLIB += Qt5DBus Qt5Gui Qt5Widgets c m xcb xkbcommon

MASTER_SITES =	https://download.fcitx-im.org/fcitx5/fcitx5-qt/

MODULES =	devel/kf5

BUILD_DEPENDS =		devel/gettext,-tools \
			inputmethods/fcitx \
			devel/iso-codes \
			devel/fmt

RUN_DEPENDS =		devel/desktop-file-utils \
			inputmethods/fcitx \
			misc/shared-mime-info

LIB_DEPENDS =		inputmethods/fcitx

CONFIGURE_ARGS =	-DENABLE_QT4=OFF

.include <bsd.port.mk>
