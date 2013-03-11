# $OpenBSD: Makefile,v 1.30 2013/03/11 11:42:42 espie Exp $

COMMENT=	graphical front end to Unix diff

DISTNAME=	mgdiff
PKGNAME=	${DISTNAME}-1.0
REVISION=	6
CATEGORIES=	textproc

MASTER_SITES=	${MASTER_SITE_XCONTRIB:=applications/}

# X11
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB=	ICE SM X11 Xau Xdmcp Xext Xmu Xt c m Xm

LIB_DEPENDS+=		x11/openmotif
USE_GROFF =	Yes
CONFIGURE_STYLE=imake
MAKE_ENV+=MOTIFLIB='-L${LOCALBASE}/lib -lXm'

NO_TEST=	Yes

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/lib/X11/mgdiff
	${INSTALL_DATA} ${WRKSRC}/mgdiff.x[bp]m ${PREFIX}/lib/X11/mgdiff

.include <bsd.port.mk>
