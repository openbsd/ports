# $OpenBSD: Makefile,v 1.6 2004/12/27 07:16:44 alek Exp $

COMMENT=	"multi-radix integer desk calculator"

DISTNAME=	hc
PKGNAME=	hc-1.1
CATEGORIES=	math

HOMEPAGE=	http://www.geocities.com/connorbd/software/hc.html

MASTER_SITES=	http://www.geocities.com/connorbd/software/

MAINTAINER=	Margarida Sequeira <margarida@openbsd.org>

# GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
WANTLIB=		c

EXTRACT_SUFX=	.tgz

WRKDIST=	${WRKDIR}/hcdist
MAKE_FILE=	makefile

NO_REGRESS=	Yes

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/hc ${PREFIX}/bin
	${INSTALL_MAN} ${WRKSRC}/hc.1 ${PREFIX}/man/man1

.include <bsd.port.mk>
