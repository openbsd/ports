# $OpenBSD: Makefile,v 1.30 2010/11/16 11:23:28 espie Exp $

COMMENT=	X11-based asteroids-style arcade

DISTNAME=	xasteroids
PKGNAME=	xasteroids-5.0
REVISION =	1
CATEGORIES=	games

MASTER_SITES=	${MASTER_SITE_R5CONTRIB}
EXTRACT_SUFX=	.sh.Z

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

WANTLIB=	X11 Xau Xdmcp Xext c m pthread-stubs xcb

CONFIGURE_STYLE=imake

WRKDIST=	${WRKDIR}

NO_REGRESS=	Yes
USE_GROFF =	Yes

post-extract:
	@cp ${FILESDIR}/Imakefile ${WRKSRC}
	@mv ${WRKSRC}/xast.man ${WRKSRC}/xasteroids.man

.include <bsd.port.mk>
