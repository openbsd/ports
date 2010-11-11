# $OpenBSD: Makefile,v 1.8 2010/11/11 12:35:19 sthen Exp $

COMMENT=	translation service based on potfiles for Zope

VERSION=	1.2.7
DISTNAME=	PlacelessTranslationService-${VERSION}
PKGNAME=	zope-${DISTNAME:L}
REVISION=	0
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
