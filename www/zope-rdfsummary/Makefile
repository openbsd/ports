# $OpenBSD: Makefile,v 1.1.1.1 2004/01/08 21:37:41 sturm Exp $

COMMENT=	"Zope product to display RSS files"

V=		2-4
DISTNAME=	RDFSummary-${V}
PKGNAME=	zope-rdfsummary-${V:S/-/./}
CATEGORIES=	www

HOMEPAGE=	http://www.zope.org/Members/EIONET/RDFSummary/

MAINTAINER=	Xavier Santolaria <xavier@santolaria.net>

# GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=	${HOMEPAGE}${V:S/-/./}/
EXTRACT_SUFX=	.tgz

MODULES=	zope

WRKDIST=	${WRKDIR}/RDFSummary

do-install:
	${INSTALL_DATA_DIR} ${MODZOPE_PRODUCTSDIR}
	cd ${WRKDIR}; tar cf - RDFSummary | tar xf - -C ${MODZOPE_PRODUCTSDIR}

.include <bsd.port.mk>
