# $OpenBSD: Makefile,v 1.33 2015/02/17 20:56:34 naddy Exp $

COMMENT=	X11-based asteroids-style arcade

DISTNAME=	xasteroids
PKGNAME=	xasteroids-5.0
REVISION=	3
CATEGORIES=	games

MASTER_SITES=	${MASTER_SITE_R5CONTRIB}
EXTRACT_SUFX=	.sh.Z

PERMIT_PACKAGE_CDROM=	Yes

WANTLIB=	X11 Xau Xdmcp Xext c m pthread-stubs xcb

CONFIGURE_STYLE=imake

WRKDIST=	${WRKDIR}

NO_TEST=	Yes

post-extract:
	@cp ${FILESDIR}/Imakefile ${WRKSRC}
	@mv ${WRKSRC}/xast.man ${WRKSRC}/xasteroids.man

.include <bsd.port.mk>
