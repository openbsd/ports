# $OpenBSD: Makefile,v 1.1.1.1 2001/02/03 20:45:37 espie Exp $

CATEGORIES=	lang
NEED_VERSION=	1.352

DISTNAME=	r5rs
EXTRACT_SUFX=	.txi

EXTRACT_CASES=	*.txi) cp ${FULLDISTDIR}/$$archive ${WRKDIR};;
WRKDIST=	${WRKDIR}

MASTER_SITES=	ftp://ftp.swiss.ai.mit.edu/pub/scm/

do-build:
	cd ${WRKDIR} && makeinfo --no-split r5rs.txi

do-install:
	${INSTALL_DATA} ${WRKBUILD}/r5rs.info ${PREFIX}/info

MAINTAINER=	Marc Espie <espie@openbsd.org>

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_FTP=	Yes

.include <bsd.port.mk>
