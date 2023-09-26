COMMENT =	addons related to Chinese with IME bundled inside fcitx

V =		5.0.17
DISTNAME =	fcitx5-chinese-addons-$V
PKGNAME =	${DISTNAME:S/fcitx5/fcitx/}
REVISION =	0

CATEGORIES =	inputmethods chinese

HOMEPAGE =	https://github.com/fcitx/fcitx5-chinese-addons

MAINTAINER =	Yifei Zhan <openbsd@zhan.science>

# LGPLv2.1+
PERMIT_PACKAGE=	Yes

WANTLIB += ${COMPILER_LIBCXX} Fcitx5Config Fcitx5Core Fcitx5Qt5DBusAddons
WANTLIB += Fcitx5Qt5WidgetsAddons Fcitx5Utils IMECore IMEPinyin
WANTLIB += IMETable Qt5Concurrent Qt5Core Qt5DBus Qt5Gui Qt5Widgets
WANTLIB += boost_iostreams-mt boost_regex-mt c m opencc

SITES =		https://download.fcitx-im.org/fcitx5/fcitx5-chinese-addons/
DIST_SUBDIR =		fcitx

SITES.py =		https://download.fcitx-im.org/data/
DISTFILES.py +=		py_table-20121124.tar.gz
DISTFILES.py +=		py_stroke-20121124.tar.gz

MODULES =		devel/kf5

BUILD_DEPENDS =		devel/gettext,-tools \
			inputmethods/fcitx-lua \
			devel/fmt \
			devel/iso-codes

RUN_DEPENDS =		devel/desktop-file-utils \
			inputmethods/fcitx-lua \
			x11/gtk+4,-guic \
			misc/shared-mime-info

LIB_DEPENDS =		inputmethods/fcitx \
			inputmethods/fcitx-qt \
			inputmethods/libime \
			devel/boost,-main \
			converters/opencc

CONFIGURE_ARGS =	-DENABLE_BROWSER=OFF \
			-DENABLE_CLOUDPINYIN=OFF

post-patch:
	cp ${FULLDISTDIR}/py_table-20121124.tar.gz \
		${WRKSRC}/modules/pinyinhelper/
	cp ${FULLDISTDIR}/py_stroke-20121124.tar.gz \
		${WRKSRC}/modules/pinyinhelper/

.include <bsd.port.mk>
