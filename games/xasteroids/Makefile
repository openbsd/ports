# $OpenBSD: Makefile,v 1.13 2000/04/09 17:36:33 espie Exp $

DISTNAME=	xasteroids
PKGNAME=	xasteroids-5.0
CATEGORIES=	games
NEED_VERSION=	1.191
FAKE=No
MASTER_SITES=	ftp://ftp.freesoftware.com/pub/X11/R5contrib/
EXTRACT_SUFX=	.sh.Z

EXTRACT_CMD=	gzcat
EXTRACT_BEFORE_ARGS=	# empty
EXTRACT_AFTER_ARGS= | sh -s

MAINTAINER=	angelos@openbsd.org

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

USE_IMAKE=	Yes

WRKDIST=	${WRKDIR}

post-extract:
	@cp ${FILESDIR}/Imakefile ${WRKSRC}
	@mv ${WRKSRC}/xast.man ${WRKSRC}/xasteroids.man

.include <bsd.port.mk>
