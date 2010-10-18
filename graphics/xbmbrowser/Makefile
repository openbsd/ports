# $OpenBSD: Makefile,v 1.21 2010/10/18 18:13:15 espie Exp $
# $FreeBSD: Makefile,v 1.3 1997/08/26 07:12:20 tg Exp $

COMMENT=	view complete directories of X bitmaps and X pixmaps

DISTNAME=	xbmbrowser5.1
PKGNAME=	xbmbrowser-5.1p3
CATEGORIES=	graphics

MASTER_SITES=	${MASTER_SITE_XCONTRIB:=utilities/}

# Public Domain-ish
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

WANTLIB=	ICE SM X11 Xau Xdmcp Xaw Xext Xmu Xpm Xt c

CONFIGURE_STYLE=imake
USE_X11=	Yes
USE_GROFF =	Yes
NO_REGRESS=	Yes

pre-configure:
	${SUBST_CMD} ${WRKSRC}/Imakefile

.include <bsd.port.mk>
