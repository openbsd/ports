COMMENT =	anthy wrapper for fcitx

GH_ACCOUNT =	fcitx
GH_PROJECT =	fcitx-anthy
GH_TAGNAME =	0.2.4
REVISION =	0

CATEGORIES =	inputmethods japanese

HOMEPAGE =	https://fcitx-im.org/

MAINTAINER = 	Kevin Lo <kevlo@openbsd.org>

# GPLv2+
PERMIT_PACKAGE=	Yes

WANTLIB +=	${COMPILER_LIBCXX} anthy

COMPILER =	base-clang ports-gcc base-gcc

MODULES =	devel/cmake

BUILD_DEPENDS =	devel/gettext,-tools \
		inputmethods/fcitx,-main
RUN_DEPENDS =	inputmethods/fcitx,-main \
		x11/gtk+3,-guic
LIB_DEPENDS =	inputmethods/anthy

NO_TEST =	Yes

.include <bsd.port.mk>
