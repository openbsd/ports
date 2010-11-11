# $OpenBSD: Makefile,v 1.5 2010/11/11 12:35:19 sthen Exp $

COMMENT=	PluggableAuthService for Plone

DISTNAME=	PluggableAuthService-1.4.2
PKGNAME=	zope-${DISTNAME:L}
REVISION=	2
CATEGORIES=	www

HOMEPAGE=	http://www.zope.org/Products/PluggableAuthService/

# ZPL 2.1
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=	http://www.zope.org/Products/PluggableAuthService/${DISTNAME}/ 

MODULES=	www/zope

RUN_DEPENDS=	::www/zope-pluginregistry \
		::www/zope-genericsetup

do-install:
	${INSTALL_DATA_DIR} ${MODZOPE_PRODUCTSDIR}
	cd ${WRKDIR}; \
	    tar -cs /${DISTNAME}/${DISTNAME:C/-.*//g}/ -f - ${DISTNAME} | \
	    tar xf - -C ${MODZOPE_PRODUCTSDIR}

.include <bsd.port.mk>
