# $OpenBSD: Makefile,v 1.21 2002/10/26 20:44:39 naddy Exp $

COMMENT=	"X11-based asteroids-style arcade"

DISTNAME=	xasteroids
PKGNAME=	xasteroids-5.0
CATEGORIES=	games

MASTER_SITES=	ftp://ftp.freesoftware.com/pub/X11/R5contrib/
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
