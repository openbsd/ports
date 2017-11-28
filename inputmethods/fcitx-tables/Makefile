# $OpenBSD: Makefile,v 1.1.1.1 2017/11/28 03:00:24 kevlo Exp $

COMMENT =	input method data tables for fcitx

PKGNAME =	fcitx-table-${GH_TAGNAME}

GH_ACCOUNT =	fcitx
GH_PROJECT =	fcitx-table-extra
GH_TAGNAME =	0.3.8

CATEGORIES =	inputmethods chinese

HOMEPAGE =	https://fcitx-im.org/

MAINTAINER = 	Kevin Lo <kevlo@openbsd.org>

# GPLv2+
PERMIT_PACKAGE_CDROM=	Yes

MODULES =	devel/cmake

BUILD_DEPENDS =	devel/gettext-tools \
		inputmethods/fcitx,-main
RUN_DEPENDS =	inputmethods/fcitx,-main

NO_TEST =	Yes

.include <bsd.port.mk>
