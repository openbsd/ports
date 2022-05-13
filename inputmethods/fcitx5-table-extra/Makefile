COMMENT =	fcitx5-table-extra provides extra table for Fcitx5

V =		5.0.9
DISTNAME =	fcitx5-table-extra-$V

CATEGORIES =	inputmethods chinese

HOMEPAGE =	https://github.com/fcitx/fcitx5-table-extra

MAINTAINER =	Yifei Zhan <openbsd@zhan.science>

# GPLv3.0 or later
PERMIT_PACKAGE=	Yes

MASTER_SITES =		https://download.fcitx-im.org/fcitx5/fcitx5-table-extra/
DISTFILES =		${DISTNAME}${EXTRACT_SUFX}
EXTRACT_SUFX = 		.tar.xz
DIST_SUBDIR =		fcitx

COMPILER =		base-clang ports-clang ports-gcc
MODULES =		devel/kf5

BUILD_DEPENDS =		devel/gettext,-tools \
			devel/iso-codes

RUN_DEPENDS =		devel/desktop-file-utils \
			x11/gtk+3,-guic \
			misc/shared-mime-info

LIB_DEPENDS =		inputmethods/fcitx5 \
			inputmethods/fcitx5-chinese-addons \
			devel/boost,-main \
			converters/opencc

# ninja: error: unknown target 'test'
NO_TEST =		Yes

.include <bsd.port.mk>
