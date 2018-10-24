# $OpenBSD: Makefile,v 1.2 2018/10/24 14:28:06 sthen Exp $

COMMENT =	anthy wrapper for fcitx

GH_ACCOUNT =	fcitx
GH_PROJECT =	fcitx-anthy
GH_TAGNAME =	0.2.3
REVISION =	0

CATEGORIES =	inputmethods japanese

HOMEPAGE =	https://fcitx-im.org/

MAINTAINER = 	Kevin Lo <kevlo@openbsd.org>

# GPLv2+
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB +=	${COMPILER_LIBCXX} anthy

COMPILER =		base-clang ports-gcc base-gcc

MODULES =	devel/cmake

BUILD_DEPENDS =	devel/gettext-tools \
		inputmethods/fcitx,-main
RUN_DEPENDS =	inputmethods/fcitx,-main
LIB_DEPENDS =	inputmethods/anthy

NO_TEST =	Yes

.include <bsd.port.mk>
