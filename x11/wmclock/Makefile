# $OpenBSD: Makefile,v 1.2 2002/03/21 21:25:56 espie Exp $

COMMENT=		"Window Maker dock.app clock"

VERSION=		1.0.12.2
DISTNAME=		wmclock-${VERSION}
CATEGORIES=		x11 x11/windowmaker
NEED_VERSION=		1.515
MASTER_SITES=		${HOMEPAGE}

HOMEPAGE=		http://www.ntrnet.net/~jmknoble/WindowMaker/wmclock/

MAINTAINER=		Marc Matteo <marcm@lectroid.net>

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
