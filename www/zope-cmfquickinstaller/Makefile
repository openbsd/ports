# $OpenBSD: Makefile,v 1.1.1.1 2004/08/08 13:02:43 xsa Exp $

COMMENT=	"facility for activation/deactivation of CMF compliant products"

V=		1.5.0
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
