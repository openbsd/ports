COMMENT=	view complete directories of X bitmaps and X pixmaps

DISTNAME=	xbmbrowser5.1
PKGNAME=	xbmbrowser-5.1
REVISION =	4
CATEGORIES=	graphics
FIX_EXTRACT_PERMISSIONS=Yes

SITES=		${SITE_XCONTRIB:=utilities/}

# Public Domain-ish
PERMIT_PACKAGE=	Yes

WANTLIB=	ICE SM X11 Xau Xdmcp Xaw Xext Xmu Xpm Xt c

CONFIGURE_STYLE=imake
NO_TEST=	Yes

pre-configure:
	${SUBST_CMD} ${WRKSRC}/Imakefile

.include <bsd.port.mk>
