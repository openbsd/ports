# $OpenBSD: Makefile,v 1.9 2009/08/26 10:53:10 kili Exp $

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

NO_REGRESS=	Yes

MAINTAINER=	Marc Espie <espie@openbsd.org>

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_FTP=	Yes

.include <bsd.port.mk>
