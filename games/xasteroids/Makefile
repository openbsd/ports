# $OpenBSD: Makefile,v 1.10 2000/03/16 23:06:44 turan Exp $

DISTNAME=       	xasteroids
PKGNAME=		xasteroids-5.0
CATEGORIES=		games
MASTER_SITES=		ftp://ftp.cdrom.com/pub/X11/R5contrib/
EXTRACT_SUFX=		.sh.Z

NEED_VERSION=		1.191

EXTRACT_CMD=		gzcat
EXTRACT_BEFORE_ARGS=	# empty
EXTRACT_AFTER_ARGS=	| sh -s

MAINTAINER=		angelos@openbsd.org

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

USE_IMAKE=		yes

WRKDIST=		${WRKDIR}

post-extract:
	@cp ${FILESDIR}/Imakefile ${WRKSRC}
	@mv ${WRKSRC}/xast.man ${WRKSRC}/xasteroids.man

.include <bsd.port.mk>
