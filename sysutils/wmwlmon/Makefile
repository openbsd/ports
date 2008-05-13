# $OpenBSD: Makefile,v 1.8 2008/05/13 20:57:39 mglocker Exp $

COMMENT=		wm-dockapp; wireless interface monitor

DISTNAME=		wmwlmon-1.0
CATEGORIES=		sysutils x11 x11/windowmaker
MASTER_SITES=		http://www.nazgul.ch/dev/

HOMEPAGE=		http://www.nazgul.ch/dev.html

MAINTAINER=		Marcus Glocker <marcus@nazgul.ch>

# BSD
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
WANTLIB=		X11 Xext Xpm c m

USE_X11=		Yes
NO_REGRESS=		Yes

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/wmwlmon ${PREFIX}/bin/wmwlmon
	${INSTALL_MAN} ${WRKSRC}/wmwlmon.1 ${PREFIX}/man/man1

.include <bsd.port.mk>
