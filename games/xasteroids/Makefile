# $OpenBSD: Makefile,v 1.17 2000/12/14 13:22:59 espie Exp $

DISTNAME=	xasteroids
PKGNAME=	xasteroids-5.0
CATEGORIES=	games
NEED_VERSION=	1.342
MASTER_SITES=	ftp://ftp.freesoftware.com/pub/X11/R5contrib/
EXTRACT_SUFX=	.sh.Z

MAINTAINER=	ports@openbsd.org

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

CONFIGURE_STYLE=	imake

WRKDIST=	${WRKDIR}

post-extract:
	@cp ${FILESDIR}/Imakefile ${WRKSRC}
	@mv ${WRKSRC}/xast.man ${WRKSRC}/xasteroids.man

.include <bsd.port.mk>
