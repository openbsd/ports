# $OpenBSD: Makefile,v 1.19 2006/11/13 12:51:15 steven Exp $

COMMENT=	"graphical front end to Unix diff"

DISTNAME=	mgdiff
PKGNAME=	mgdiff-1.0
CATEGORIES=	textproc

MASTER_SITES=	${MASTER_SITE_XCONTRIB:=applications/}

# X11
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
WANTLIB=		ICE SM X11 Xext Xmu Xt c 

USE_X11=	Yes
USE_MOTIF=	any
CONFIGURE_STYLE= imake

NO_REGRESS=	Yes

SUBST_VARS=	X11BASE

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/lib/X11/mgdiff
	${INSTALL_DATA} ${WRKSRC}/mgdiff.x[bp]m ${PREFIX}/lib/X11/mgdiff
	${INSTALL_MAN} ${WRKSRC}/mgdiff.man ${PREFIX}/man/man1/mgdiff.1

.include <bsd.port.mk>
