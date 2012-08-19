# $OpenBSD: Makefile,v 1.6 2012/08/19 22:59:06 ajacoutot Exp $

ONLY_FOR_ARCHS=	i386

COMMENT=	converts documents from text/html to isilo format

VER=		2.58
DISTNAME=	iSiloBSD
PKGNAME=	isilo-${VER}
CATEGORIES=	palm textproc
EXTRACT_SUFX=	.zip
REVISION=	0

HOMEPAGE=	http://www.iSilo.com/

MAINTAINER=	Peter Valchev <pvalchev@openbsd.org>

PERMIT_PACKAGE_CDROM=   Yes
PERMIT_PACKAGE_FTP=     Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=   Yes

MASTER_SITES=	ftp://ftp.iSilo.com/pub/

WRKDIST=        ${WRKDIR}
NO_BUILD=	Yes
USE_GROFF =	Yes
NO_REGRESS=	Yes

post-extract:
	@cp ${FILESDIR}/Makefile ${FILESDIR}/iSiloBSD.1 ${WRKDIR}

.include <bsd.port.mk>
