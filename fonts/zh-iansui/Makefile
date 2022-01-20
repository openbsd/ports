# $OpenBSD: Makefile,v 1.1.1.1 2022/01/20 00:54:58 kevlo Exp $

COMMENT =		Chinese truetype font derived from Klee One

V =			0.910
PKGNAME =		zh-iansui-${V}

GH_ACCOUNT =		ButTaiwan
GH_PROJECT =		iansui
GH_TAGNAME =		v${V}

CATEGORIES =		fonts chinese x11

HOMEPAGE =		https://github.com/ButTaiwan/iansui

MAINTAINER =		Kevin Lo <kevlo@openbsd.org>

# SIL OFL 1.1
PERMIT_PACKAGE =	Yes

NO_BUILD =		Yes
NO_TEST =		Yes

FONTDIR =		${PREFIX}/share/fonts/iansui

do-install:
	${INSTALL_DATA_DIR} ${FONTDIR}
	${INSTALL_DATA} ${WRKSRC}/Iansui0.91-Regular.ttf \
		${FONTDIR}/Iansui-Regular.ttf

.include <bsd.port.mk>
