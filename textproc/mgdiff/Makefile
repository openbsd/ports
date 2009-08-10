# $OpenBSD: Makefile,v 1.22 2009/08/10 06:34:56 kili Exp $

COMMENT=	graphical front end to Unix diff

DISTNAME=	mgdiff
PKGNAME=	${DISTNAME}-1.0p1
CATEGORIES=	textproc

MASTER_SITES=	${MASTER_SITE_XCONTRIB:=applications/}

# X11
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

WANTLIB=	ICE SM X11 Xau Xdmcp Xext Xmu Xt c pthread-stubs xcb

USE_X11=	Yes
USE_MOTIF=	any
CONFIGURE_STYLE=imake

NO_REGRESS=	Yes

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/lib/X11/mgdiff
	${INSTALL_DATA} ${WRKSRC}/mgdiff.x[bp]m ${PREFIX}/lib/X11/mgdiff
	${INSTALL_MAN} ${WRKSRC}/mgdiff.man ${PREFIX}/man/man1/mgdiff.1

.include <bsd.port.mk>
