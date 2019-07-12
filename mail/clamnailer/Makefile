# $OpenBSD: Makefile,v 1.7 2019/07/12 20:47:25 sthen Exp $

COMMENT=	generate ScamNailer spear phishing database in ClamAV format

DISTNAME=	ClamNailer-1.01
PKGNAME=	${DISTNAME:L}
REVISION=	1
EXTRACT_SUFX=	.gz

CATEGORIES=	mail security

HOMEPAGE=	http://www.scamnailer.info/

# Public Domain
PERMIT_PACKAGE=	Yes

MASTER_SITES=	http://www.scamnailer.info/files/contrib/

NO_BUILD=	Yes
NO_TEST=	Yes
RUN_DEPENDS=	security/clamav

WRKDIST=	${WRKDIR}

# fix MS-DOS line-endings, output to a file with non-version-dependent name
post-extract:
	perl -pi -e 's/\r$$//' < ${WRKSRC}/${DISTNAME} > ${WRKSRC}/clamnailer

do-install:
	${INSTALL_SCRIPT} ${WRKSRC}/clamnailer ${PREFIX}/sbin

.include <bsd.port.mk>
