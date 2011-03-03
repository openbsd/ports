# $OpenBSD: Makefile,v 1.13 2011/03/03 16:29:29 sthen Exp $

COMMENT=	graphical network simulator

MODPY_EGG_VERSION=	0.7.3
DISTNAME=		GNS3-${MODPY_EGG_VERSION}-src
PKGNAME=		gns3-${MODPY_EGG_VERSION}

CATEGORIES=	emulators

HOMEPAGE=	http://www.gns3.net/

MAINTAINER=	Jonathan Armani <armani@openbsd.org>

# GPLv2 only
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=gns-3/}

MODULES=	lang/python
RUN_DEPENDS=	x11/py-qt4 \
		emulators/dynamips

NO_REGRESS=	Yes
PKG_ARCH=	*

pre-configure:
	cd ${WRKSRC}/src/GNS3; ${SUBST_CMD} \
		Application.py Config/Defaults.py QemuManager.py
	${MODPY_BIN_ADJ} ${WRKSRC}/qemuwrapper/qemuwrapper.py

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/libexec/gns3
	${INSTALL_SCRIPT} ${WRKSRC}/qemuwrapper/qemuwrapper.py ${PREFIX}/libexec/gns3

.include <bsd.port.mk>
