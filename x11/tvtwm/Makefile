# $FreeBSD: ports/x11-wm/tvtwm/Makefile,v 1.17 1999/08/31 06:53:15 mharo Exp $
# $OpenBSD: Makefile,v 1.15 2002/10/29 19:48:59 naddy Exp $

COMMENT=	"twm with a virtual desktop"

DISTNAME=	tvtwm.pl11
PKGNAME=	tvtwm-0pl11
CATEGORIES=	x11

MAINTAINER=	Dug Song <dugsong@monkey.org>

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=	${MASTER_SITE_XCONTRIB:=window_managers/}

WRKDIST=	${WRKDIR}/tvtwm

USE_X11=	Yes

CONFIGURE_STYLE=	imake

NO_REGRESS=	Yes

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/tvtwm ${PREFIX}/bin
	${INSTALL_MAN} ${WRKSRC}/tvtwm.man ${PREFIX}/man/man1/tvtwm.1

.include <bsd.port.mk>
