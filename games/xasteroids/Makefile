# $OpenBSD: Makefile,v 1.8 2000/01/23 19:38:04 brad Exp $

DISTNAME=       	xasteroids
PKGNAME=		xasteroids-5.0
CATEGORIES=		games
MASTER_SITES=		ftp://ftp.cdrom.com/pub/X11/R5contrib/
EXTRACT_SUFX=		.sh.Z

NEED_VERSION=		1.91

EXTRACT_CMD=		${GZCAT}
EXTRACT_BEFORE_ARGS=	# empty
EXTRACT_AFTER_ARGS=	| sh -s

MAINTAINER=		angelos@openbsd.org

USE_IMAKE=		yes

NO_WRKSUBDIR=		yes

post-extract:
	@cp ${FILESDIR}/Imakefile ${WRKSRC}
	@mv ${WRKSRC}/xast.man ${WRKSRC}/xasteroids.man

.include <bsd.port.mk>
