# $OpenBSD: Makefile,v 1.22 2004/05/18 08:45:33 xsa Exp $

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

CONFIGURE_STYLE=	imake

WRKDIST=	${WRKDIR}

NO_REGRESS=	Yes

post-extract:
	@cp ${FILESDIR}/Imakefile ${WRKSRC}
	@mv ${WRKSRC}/xast.man ${WRKSRC}/xasteroids.man

.include <bsd.port.mk>
