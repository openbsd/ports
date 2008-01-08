# $OpenBSD: Makefile,v 1.6 2008/01/08 14:48:57 winiger Exp $

COMMENT=	translation service based on potfiles for Zope

VERSION=	1.2.7
DISTNAME=	PlacelessTranslationService-${VERSION}
PKGNAME=	zope-${DISTNAME:L}
CATEGORIES=	www
HOMEPAGE=	http://plone.org/products/pts/

# GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=	${HOMEPAGE}/releases/${VERSION}/

MODULES=	www/zope

RUN_DEPENDS=	::www/zope-formulator

WRKDIST=	${WRKDIR}/PlacelessTranslationService

do-install:
	${INSTALL_DATA_DIR} ${MODZOPE_PRODUCTSDIR}
	cd ${WRKDIR}; tar cf - PlacelessTranslationService | \
		tar xf - -C ${MODZOPE_PRODUCTSDIR}

.include <bsd.port.mk>
