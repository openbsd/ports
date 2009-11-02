# $OpenBSD: Makefile,v 1.1.1.1 2009/11/02 17:00:02 sthen Exp $

COMMENT=	generate ScamNailer spear phishing database in ClamAV format

DISTNAME=	ClamNailer-1.00
PKGNAME=	${DISTNAME:L}
EXTRACT_SUFX=	.gz

CATEGORIES=	mail security

HOMEPAGE=	http://www.scamnailer.info/

# Public Domain
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=	http://www.scamnailer.info/files/contrib/

NO_BUILD=	Yes
NO_REGRESS=	Yes
RUN_DEPENDS=	::security/clamav

WRKDIST=	${WRKDIR}

# fix MS-DOS line-endings, output to a file with non-version-dependent name
post-extract:
	perl -pi -e 's/\r$$//' < ${WRKSRC}/${DISTNAME} > ${WRKSRC}/clamnailer

do-install:
	${INSTALL_SCRIPT} ${WRKSRC}/clamnailer ${PREFIX}/sbin

.include <bsd.port.mk>
