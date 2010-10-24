# $OpenBSD: Makefile,v 1.12 2010/10/24 21:15:35 ajacoutot Exp $

COMMENT=		Window Maker dock.app clock

VERSION=		1.0.12.2
DISTNAME=		wmclock-${VERSION}
REVISION=		0
CATEGORIES=		x11 x11/windowmaker
MASTER_SITES=		${HOMEPAGE}

HOMEPAGE=		http://www.jmknoble.net/WindowMaker/wmclock/

# GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

WANTLIB=		X11 Xau Xdmcp Xext Xpm c

USE_GROFF =	Yes
NO_REGRESS=		Yes
CONFIGURE_STYLE=	simple

do-install:
	${INSTALL_PROGRAM} ${WRKBUILD}/wmclock ${PREFIX}/bin
	${INSTALL_MAN} ${WRKBUILD}/wmclock.man ${PREFIX}/man/man1/wmclock.1

.include <bsd.port.mk>
