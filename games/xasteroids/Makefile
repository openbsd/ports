# $OpenBSD: Makefile,v 1.16 2000/09/15 14:54:04 espie Exp $

DISTNAME=	xasteroids
PKGNAME=	xasteroids-5.0
CATEGORIES=	games
NEED_VERSION=	1.330
MASTER_SITES=	ftp://ftp.freesoftware.com/pub/X11/R5contrib/
EXTRACT_SUFX=	.sh.Z

EXTRACT_CASES=	*.sh.Z) gzcat ${FULLDISTDIR}/$$archive | /bin/sh -s ;;

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
