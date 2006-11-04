# $OpenBSD: Makefile,v 1.17 2006/11/04 19:19:15 kili Exp $
# $FreeBSD: Makefile,v 1.1.1.1 1999/01/18 04:50:26 steve Exp $

COMMENT=	"new POSIX awk"

DISTNAME=	mawk-1.3.3
DISTFILES=	${DISTNAME:S,-,,}.tar.gz
CATEGORIES=	lang
MASTER_SITES=	${MASTER_SITE_BACKUP}

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
WANTLIB=		c m

CONFIGURE_STYLE= gnu old

ALL_TARGET=	mawk
REGRESS_TARGET=	mawk_test

do-install:
	${INSTALL_PROGRAM} ${WRKBUILD}/mawk ${PREFIX}/bin
	${INSTALL_MAN} ${WRKSRC}/man/mawk.1 ${PREFIX}/man/man1

.include <bsd.port.mk>
