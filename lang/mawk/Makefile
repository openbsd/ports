# $OpenBSD: Makefile,v 1.21 2010/10/24 21:06:28 sthen Exp $
# $FreeBSD: Makefile,v 1.1.1.1 1999/01/18 04:50:26 steve Exp $

COMMENT=	fast POSIX-compliant awk

DISTNAME=	mawk-1.3.3
REVISION=	0
DISTFILES=	${DISTNAME:S,-,,}.tar.gz
CATEGORIES=	lang
MASTER_SITES=	${MASTER_SITE_BACKUP}

# GPL V2
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

WANTLIB=		c m

CONFIGURE_STYLE= gnu old

ALL_TARGET=	mawk
REGRESS_TARGET=	mawk_test
USE_GROFF =	Yes

do-install:
	${INSTALL_PROGRAM} ${WRKBUILD}/mawk ${PREFIX}/bin
	${INSTALL_MAN} ${WRKSRC}/man/mawk.1 ${PREFIX}/man/man1

.include <bsd.port.mk>
