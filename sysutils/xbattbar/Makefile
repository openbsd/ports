# $OpenBSD: Makefile,v 1.7 2019/07/12 20:49:54 sthen Exp $

ONLY_FOR_ARCHS = ${APM_ARCHS}

COMMENT =	show battery status as a simple bar in X11

DISTNAME =	xbattbar_1.4.2
PKGNAME =	${DISTNAME:S/_/-/}
REVISION = 	2
WRKDIST =	${WRKDIR}/${DISTNAME:S/_/-/}
CATEGORIES =	sysutils x11

HOMEPAGE =	http://iplab.naist.jp/member/suguru/xbattbar.html

MASTER_SITES =	http://iplab.naist.jp/member/suguru/

MAINTAINER =	Brynet <brynet@gmail.com>

# GPLv2+
PERMIT_PACKAGE =	Yes

WANTLIB =	X11 Xau Xdmcp Xext c xcb

CONFIGURE_STYLE =	imake noman

NO_TEST =	Yes

post-install:
	${INSTALL_MAN} ${WRKSRC}/xbattbar.man ${PREFIX}/man/man1/xbattbar.1

.include <bsd.port.mk>
