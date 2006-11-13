# $OpenBSD: Makefile,v 1.24 2006/11/13 10:08:12 steven Exp $

COMMENT=	"X11-based asteroids-style arcade"

DISTNAME=	xasteroids
PKGNAME=	xasteroids-5.0
CATEGORIES=	games

MASTER_SITES=	${MASTER_SITE_R5CONTRIB}
EXTRACT_SUFX=	.sh.Z

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
WANTLIB=		X11 Xext c m

CONFIGURE_STYLE=	imake

WRKDIST=	${WRKDIR}

NO_REGRESS=	Yes
USE_X11=	Yes

post-extract:
	@cp ${FILESDIR}/Imakefile ${WRKSRC}
	@mv ${WRKSRC}/xast.man ${WRKSRC}/xasteroids.man

.include <bsd.port.mk>
