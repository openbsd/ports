# $OpenBSD: Makefile,v 1.2 2005/01/25 14:30:38 xsa Exp $

COMMENT=	"facility for activation/deactivation of CMF compliant products"

V=		1.5.1
DISTNAME=	CMFQuickInstallerTool-${V}
PKGNAME=	zope-cmfquickinstaller-${V}
CATEGORIES=	www

MAINTAINER=	Xavier Santolaria <xsa@openbsd.org>

# GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=collective/}
EXTRACT_SUFX=	.tgz

MODULES=	www/zope

RUN_DEPENDS=	::www/zope-cmf

WRKDIST=	${WRKDIR}/CMFQuickInstallerTool

do-install:
	${INSTALL_DATA_DIR} ${MODZOPE_PRODUCTSDIR}
	cd ${WRKDIR}; tar cf - CMFQuickInstallerTool | \
		tar xf - -C ${MODZOPE_PRODUCTSDIR}

.include <bsd.port.mk>
