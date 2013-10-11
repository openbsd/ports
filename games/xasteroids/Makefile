# $OpenBSD: Makefile,v 1.32 2013/10/11 20:39:23 naddy Exp $

COMMENT=	X11-based asteroids-style arcade

DISTNAME=	xasteroids
PKGNAME=	xasteroids-5.0
REVISION =	2
CATEGORIES=	games

MASTER_SITES=	${MASTER_SITE_R5CONTRIB}
EXTRACT_SUFX=	.sh.Z

PERMIT_PACKAGE_CDROM=	Yes

WANTLIB=	X11 Xau Xdmcp Xext c m pthread-stubs xcb

CONFIGURE_STYLE=imake

WRKDIST=	${WRKDIR}

NO_TEST=	Yes
USE_GROFF =	Yes

post-extract:
	@cp ${FILESDIR}/Imakefile ${WRKSRC}
	@mv ${WRKSRC}/xast.man ${WRKSRC}/xasteroids.man

.include <bsd.port.mk>
