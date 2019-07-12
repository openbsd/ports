# $OpenBSD: Makefile,v 1.3 2019/07/12 20:47:13 sthen Exp $

COMMENT =	chewing wrapper for fcitx

GH_ACCOUNT =	fcitx
GH_PROJECT =	fcitx-chewing
GH_TAGNAME =	0.2.3

CATEGORIES =	inputmethods chinese

HOMEPAGE =	https://fcitx-im.org/

MAINTAINER = 	Kevin Lo <kevlo@openbsd.org>

# GPLv2+
PERMIT_PACKAGE=	Yes

WANTLIB +=	chewing

MODULES =	devel/cmake

BUILD_DEPENDS =	devel/gettext,-tools \
		inputmethods/fcitx,-main
RUN_DEPENDS =	inputmethods/fcitx,-main
LIB_DEPENDS =	chinese/libchewing

NO_TEST =	Yes

.include <bsd.port.mk>
