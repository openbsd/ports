# $OpenBSD: Makefile,v 1.12 2013/03/11 11:23:55 espie Exp $

COMMENT=	multi-radix integer desk calculator

DISTNAME=	hc
PKGNAME=	hc-1.1
REVISION=	0
CATEGORIES=	math

HOMEPAGE=	http://www.geocities.com/connorbd/software/hc.html

MASTER_SITES=	http://www.geocities.com/connorbd/software/

# GPL
PERMIT_PACKAGE_CDROM=	Yes
WANTLIB=		c

EXTRACT_SUFX=	.tgz

WRKDIST=	${WRKDIR}/hcdist
MAKE_FILE=	makefile
USE_GROFF =	Yes

NO_TEST=	Yes

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/hc ${PREFIX}/bin
	${INSTALL_MAN} ${WRKSRC}/hc.1 ${PREFIX}/man/man1

.include <bsd.port.mk>
