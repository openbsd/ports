# $OpenBSD: Makefile,v 1.16 2015/09/11 14:53:12 sthen Exp $

COMMENT=		wm-dockapp; wireless interface monitor

DISTNAME=		wmwlmon-1.0
REVISION =		2
CATEGORIES=		sysutils x11 x11/windowmaker
MASTER_SITES=		http://www.nazgul.ch/dev/

HOMEPAGE=		http://www.nazgul.ch/dev.html

MAINTAINER=		Marcus Glocker <marcus@nazgul.ch>

# BSD
PERMIT_PACKAGE_CDROM=	Yes
WANTLIB=		X11 Xext Xpm c m pthread-stubs xcb

NO_TEST=		Yes

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/wmwlmon ${PREFIX}/bin/wmwlmon
	${INSTALL_MAN} ${WRKSRC}/wmwlmon.1 ${PREFIX}/man/man1

.include <bsd.port.mk>
