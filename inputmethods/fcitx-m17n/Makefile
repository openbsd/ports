# $OpenBSD: Makefile,v 1.1.1.1 2019/06/21 16:34:55 kevlo Exp $

COMMENT =	m17n wrapper for fcitx

GH_ACCOUNT =	fcitx
GH_PROJECT =	fcitx-m17n
GH_TAGNAME =	0.2.4

CATEGORIES =	inputmethods chinese

HOMEPAGE =	https://fcitx-im.org/wiki/M17N

MAINTAINER =	Kevin Lo <kevlo@openbsd.org>

# LGPL2.1+
PERMIT_PACKAGE=	Yes

WANTLIB +=	m17n m17n-core

MODULES =	devel/cmake

BUILD_DEPENDS =	devel/gettext,-tools \
		inputmethods/fcitx,-main
RUN_DEPENDS =	inputmethods/fcitx,-main
LIB_DEPENDS =	misc/m17n/lib

NO_TEST =	Yes

.include <bsd.port.mk>
