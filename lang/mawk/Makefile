# $OpenBSD: Makefile,v 1.23 2013/03/11 11:20:28 espie Exp $

COMMENT=	fast POSIX-compliant awk

DISTNAME=	mawk-1.3.3
REVISION=	0
DISTFILES=	${DISTNAME:S,-,,}.tar.gz
CATEGORIES=	lang
MASTER_SITES=	${MASTER_SITE_BACKUP}

# GPL V2
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB=		c m

CONFIGURE_STYLE= gnu old

ALL_TARGET=	mawk
TEST_TARGET=	mawk_test
USE_GROFF =	Yes

do-install:
	${INSTALL_PROGRAM} ${WRKBUILD}/mawk ${PREFIX}/bin
	${INSTALL_MAN} ${WRKSRC}/man/mawk.1 ${PREFIX}/man/man1

.include <bsd.port.mk>
