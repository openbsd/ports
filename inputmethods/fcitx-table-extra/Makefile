COMMENT =	extra table for Fcitx5

V =		5.0.13
DISTNAME =	fcitx5-table-extra-$V
PKGNAME =	${DISTNAME:S/fcitx5/fcitx/}
REVISION =	0

CATEGORIES =	inputmethods chinese

HOMEPAGE =	https://github.com/fcitx/fcitx5-table-extra

MAINTAINER =	Yifei Zhan <openbsd@zhan.science>

# GPLv3.0 or later
PERMIT_PACKAGE=	Yes

SITES =			https://download.fcitx-im.org/fcitx5/fcitx5-table-extra/
DIST_SUBDIR =		fcitx

MODULES =		devel/kf5

BUILD_DEPENDS =		devel/gettext,-tools \
			devel/iso-codes

RUN_DEPENDS =		devel/desktop-file-utils \
			x11/gtk+4,-guic \
			misc/shared-mime-info

LIB_DEPENDS =		inputmethods/fcitx \
			inputmethods/fcitx-chinese-addons \
			devel/boost,-main \
			converters/opencc

# ninja: error: unknown target 'test'
NO_TEST =		Yes

.include <bsd.port.mk>
