# $OpenBSD: Makefile,v 1.3 2002/10/27 18:29:15 naddy Exp $

COMMENT=	"multi-radix integer desk calculator"

DISTNAME=	hc
PKGNAME=	hc-1.1
CATEGORIES=	math

MAINTAINER=	Mark Grimes <mark@openbsd.org>

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
