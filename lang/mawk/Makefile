# $OpenBSD: Makefile,v 1.13 2001/05/06 01:28:01 lebel Exp $
# $FreeBSD: Makefile,v 1.1.1.1 1999/01/18 04:50:26 steve Exp $

COMMENT=	"new/posix awk"

DISTNAME=	mawk1.3.3
PKGNAME=	mawk-1.3.3
CATEGORIES=	lang
NEED_VERSION=	1.402
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
