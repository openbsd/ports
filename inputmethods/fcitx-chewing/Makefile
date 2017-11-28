# $OpenBSD: Makefile,v 1.1.1.1 2017/11/28 02:59:17 kevlo Exp $

COMMENT =	chewing wrapper for fcitx

GH_ACCOUNT =	fcitx
GH_PROJECT =	fcitx-chewing
GH_TAGNAME =	0.2.3

CATEGORIES =	inputmethods chinese

HOMEPAGE =	https://fcitx-im.org/

MAINTAINER = 	Kevin Lo <kevlo@openbsd.org>

# GPLv2+
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB +=	chewing

MODULES =	devel/cmake

BUILD_DEPENDS =	devel/gettext-tools \
		inputmethods/fcitx,-main
RUN_DEPENDS =	inputmethods/fcitx,-main
LIB_DEPENDS =	chinese/libchewing

NO_TEST =	Yes

.include <bsd.port.mk>
