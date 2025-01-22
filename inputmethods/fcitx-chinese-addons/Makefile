COMMENT =	addons related to Chinese with IME bundled inside fcitx

DISTNAME =	fcitx5-chinese-addons-5.1.7
PKGNAME =	${DISTNAME:S/fcitx5/fcitx/}

CATEGORIES =	inputmethods chinese

HOMEPAGE =	https://github.com/fcitx/fcitx5-chinese-addons

MAINTAINER =	Yifei Zhan <openbsd@zhan.science>

# LGPLv2.1+
PERMIT_PACKAGE=	Yes

WANTLIB += ${COMPILER_LIBCXX} Fcitx5Config Fcitx5Core Fcitx5Qt6WidgetsAddons
WANTLIB += Fcitx5Utils GL IMECore IMEPinyin IMETable Qt6Concurrent
WANTLIB += Qt6Core Qt6Gui Qt6Widgets boost_container-mt boost_iostreams-mt
WANTLIB += boost_json-mt boost_regex-mt c m opencc

SITES =		https://download.fcitx-im.org/fcitx5/fcitx5-chinese-addons/
EXTRACT_SUFX =		.tar.zst

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
	   ${FULLDISTDIR}/py_stroke-20121124.tar.gz \
	${WRKSRC}/modules/pinyinhelper/

.include <bsd.port.mk>
