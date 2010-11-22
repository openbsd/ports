# $OpenBSD: Makefile,v 1.9 2010/11/22 08:36:55 espie Exp $

COMMENT=	facility for (de)activation of CMF compliant products

V=		1.5.2
DISTNAME=	CMFQuickInstallerTool-${V}
PKGNAME=	zope-cmfquickinstaller-${V}
REVISION=	1
CATEGORIES=	www

# GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=collective/}
EXTRACT_SUFX=	.tgz

MODULES=	www/zope

RUN_DEPENDS=	www/zope-cmf

WRKDIST=	${WRKDIR}/CMFQuickInstallerTool

do-install:
	${INSTALL_DATA_DIR} ${MODZOPE_PRODUCTSDIR}
	cd ${WRKDIR}; tar cf - CMFQuickInstallerTool | \
		tar xf - -C ${MODZOPE_PRODUCTSDIR}

.include <bsd.port.mk>
