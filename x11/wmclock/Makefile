# $OpenBSD: Makefile,v 1.4 2003/01/02 03:26:12 marcm Exp $

COMMENT=		"Window Maker dock.app clock"

VERSION=		1.0.12.2
DISTNAME=		wmclock-${VERSION}
CATEGORIES=		x11 x11/windowmaker
MASTER_SITES=		${MASTER_SITE_BACKUP}

HOMEPAGE=		http://www.ntrnet.net/~jmknoble/WindowMaker/wmclock/

# GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

USE_X11=		Yes
NO_REGRESS=		Yes
CONFIGURE_STYLE=	simple

do-install:
	${INSTALL_PROGRAM} ${WRKBUILD}/wmclock ${PREFIX}/bin
	${INSTALL_MAN} ${WRKBUILD}/wmclock.man ${PREFIX}/man/man1/wmclock.1

.include <bsd.port.mk>
