# $OpenBSD: Makefile,v 1.1.1.1 2001/12/17 07:06:43 obecian Exp $

COMMENT=	"multi-radix integer desk calculator"

DISTNAME=	hc
PKGNAME=	hc-1.1
CATEGORIES=	math
NEED_VERSION=	1.500

MAINTAINER=	Mark Grimes <obecian@openbsd.org>

HOMEPAGE=	http://www.geocities.com/connorbd/software/hc.html

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

WRKDIST=	${WRKDIR}/hcdist
MASTER_SITES=	http://www.geocities.com/connorbd/software/
MAKE_FILE=	makefile
EXTRACT_SUFX=	.tgz

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/hc ${PREFIX}/bin
	${INSTALL_MAN} ${WRKSRC}/hc.1 ${PREFIX}/man/man1

.include <bsd.port.mk>
