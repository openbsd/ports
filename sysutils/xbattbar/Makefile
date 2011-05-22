# $OpenBSD: Makefile,v 1.2 2011/05/22 13:44:47 jasper Exp $

ONLY_FOR_ARCHS = ${APM_ARCHS}

COMMENT =	show battery status as a simple bar in X11

DISTNAME =	xbattbar_1.4.2
PKGNAME =	${DISTNAME:S/_/-/}
WRKDIST =	${WRKDIR}/${DISTNAME:S/_/-/}
CATEGORIES =	sysutils x11

HOMEPAGE =	http://iplab.naist.jp/member/suguru/xbattbar.html

MASTER_SITES =	http://iplab.naist.jp/member/suguru/

MAINTAINER =	Brynet <brynet@gmail.com>

# GPLv2+
PERMIT_PACKAGE_CDROM =	Yes
PERMIT_PACKAGE_FTP =	Yes
PERMIT_DISTFILES_CDROM =	Yes
PERMIT_DISTFILES_FTP =	Yes

WANTLIB =	X11 Xau Xdmcp Xext c pthread-stubs xcb

CONFIGURE_STYLE =	imake noman

NO_REGRESS =	Yes

post-install:
	${INSTALL_MAN} ${WRKSRC}/xbattbar.man ${PREFIX}/man/man1/xbattbar.1

.include <bsd.port.mk>
