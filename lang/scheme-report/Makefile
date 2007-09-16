# $OpenBSD: Makefile,v 1.8 2007/09/16 00:27:06 merdely Exp $

COMMENT=	revised^5 report on scheme

CATEGORIES=	lang books

DISTNAME=	r5rs
PKGNAME=	${DISTNAME}-19980421
EXTRACT_SUFX=	.txi

EXTRACT_CASES=	*.txi) cp ${FULLDISTDIR}/$$archive ${WRKDIR};;
WRKDIST=	${WRKDIR}

MASTER_SITES=	ftp://ftp.swiss.ai.mit.edu/pub/scm/

do-build:
	cd ${WRKDIR} && makeinfo --no-split r5rs.txi

do-install:
	${INSTALL_DATA} ${WRKBUILD}/r5rs.info ${PREFIX}/info

NO_REGRESS=	Yes

MAINTAINER=	Marc Espie <espie@openbsd.org>

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_FTP=	Yes

.include <bsd.port.mk>
