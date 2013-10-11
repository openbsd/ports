# $OpenBSD: Makefile,v 1.26 2013/10/11 20:39:34 naddy Exp $

COMMENT=	view complete directories of X bitmaps and X pixmaps

DISTNAME=	xbmbrowser5.1
PKGNAME=	xbmbrowser-5.1
REVISION =	4
CATEGORIES=	graphics

MASTER_SITES=	${MASTER_SITE_XCONTRIB:=utilities/}

# Public Domain-ish
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB=	ICE SM X11 Xau Xdmcp Xaw Xext Xmu Xpm Xt c

CONFIGURE_STYLE=imake
USE_GROFF =	Yes
NO_TEST=	Yes

pre-configure:
	${SUBST_CMD} ${WRKSRC}/Imakefile

.include <bsd.port.mk>
