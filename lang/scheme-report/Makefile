# $OpenBSD: Makefile,v 1.10 2013/03/11 11:20:28 espie Exp $

COMMENT=	revised^5 report on scheme

CATEGORIES=	lang books

DISTNAME=	r5rs
PKGNAME=	${DISTNAME}-19980421
EXTRACT_SUFX=	.txi

EXTRACT_CASES=	*.txi) cp ${FULLDISTDIR}/$$archive ${WRKDIR};;
WRKDIST=	${WRKDIR}

MASTER_SITES=	http://groups.csail.mit.edu/mac/ftpdir/scm/ \
		http://groups.csail.mit.edu/mac/ftpdir/scm/OLD/

do-build:
	cd ${WRKDIR} && makeinfo --no-split r5rs.txi

do-install:
	${INSTALL_DATA} ${WRKBUILD}/r5rs.info ${PREFIX}/info

NO_TEST=	Yes

MAINTAINER=	Marc Espie <espie@openbsd.org>

PERMIT_PACKAGE_CDROM=	Yes

.include <bsd.port.mk>
