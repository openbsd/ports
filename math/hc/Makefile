# $OpenBSD: Makefile,v 1.4 2002/12/09 15:37:23 brad Exp $

COMMENT=	"multi-radix integer desk calculator"

DISTNAME=	hc
PKGNAME=	hc-1.1
CATEGORIES=	math

MAINTAINER=	Mark Grimes <mark@stateful.net>

HOMEPAGE=	http://www.geocities.com/connorbd/software/hc.html

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

WRKDIST=	${WRKDIR}/hcdist
MASTER_SITES=	http://www.geocities.com/connorbd/software/
MAKE_FILE=	makefile
EXTRACT_SUFX=	.tgz

NO_REGRESS=	Yes

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/hc ${PREFIX}/bin
	${INSTALL_MAN} ${WRKSRC}/hc.1 ${PREFIX}/man/man1

.include <bsd.port.mk>
