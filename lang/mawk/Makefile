# $OpenBSD: Makefile,v 1.12 2000/12/31 05:28:35 brad Exp $
# $FreeBSD: Makefile,v 1.1.1.1 1999/01/18 04:50:26 steve Exp $

DISTNAME=	mawk1.3.3
PKGNAME=	mawk-1.3.3
CATEGORIES=	lang
NEED_VERSION=	1.336
MASTER_SITES=	ftp://ftp.whidbey.net/pub/brennan/

MAINTAINER=	Brad Smith <brad@openbsd.org>

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

CONFIGURE_STYLE= gnu old

ALL_TARGET=

WRKDIST=	${WRKDIR}/${PKGNAME}

do-install:
	${INSTALL_PROGRAM} ${WRKBUILD}/mawk ${PREFIX}/bin
	${INSTALL_MAN} ${WRKSRC}/man/mawk.1 ${PREFIX}/man/man1

.include <bsd.port.mk>
