# $OpenBSD: Makefile,v 1.19 2019/07/12 20:49:54 sthen Exp $

COMMENT=		wm-dockapp; wireless interface monitor

DISTNAME=		wmwlmon-1.0
REVISION =		4
CATEGORIES=		sysutils x11 x11/windowmaker
MASTER_SITES=		http://www.nazgul.ch/dev/

HOMEPAGE=		http://www.nazgul.ch/dev.html

MAINTAINER=		Marcus Glocker <marcus@nazgul.ch>

# BSD
PERMIT_PACKAGE=	Yes
WANTLIB=		X11 Xext Xpm c m xcb

NO_TEST=		Yes

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/wmwlmon ${PREFIX}/bin/wmwlmon
	${INSTALL_MAN} ${WRKSRC}/wmwlmon.1 ${PREFIX}/man/man1

.include <bsd.port.mk>
