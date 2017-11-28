# $OpenBSD: Makefile,v 1.1.1.1 2017/11/28 02:58:36 kevlo Exp $

COMMENT =	anthy wrapper for fcitx

GH_ACCOUNT =	fcitx
GH_PROJECT =	fcitx-anthy
GH_TAGNAME =	0.2.3

CATEGORIES =	inputmethods japanese

HOMEPAGE =	https://fcitx-im.org/

MAINTAINER = 	Kevin Lo <kevlo@openbsd.org>

# GPLv2+
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB +=	${COMPILER_LIBCXX} anthy

MODULES =	devel/cmake

BUILD_DEPENDS =	devel/gettext-tools \
		inputmethods/fcitx,-main
RUN_DEPENDS =	inputmethods/fcitx,-main
LIB_DEPENDS =	inputmethods/anthy

NO_TEST =	Yes

.include <bsd.port.mk>
