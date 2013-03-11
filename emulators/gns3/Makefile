# $OpenBSD: Makefile,v 1.21 2013/03/11 11:06:04 espie Exp $

COMMENT=	graphical network simulator

MODPY_EGG_VERSION = 0.8.3.1
DISTNAME=	GNS3-${MODPY_EGG_VERSION}-src
PKGNAME=	gns3-${MODPY_EGG_VERSION}

CATEGORIES=	emulators

HOMEPAGE=	http://www.gns3.net/

# GPLv2 only
PERMIT_PACKAGE_CDROM=	Yes

MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=gns-3/}

MODULES=	lang/python
RUN_DEPENDS=	x11/py-qt4 \
		emulators/dynagen \
		emulators/qemu

NO_TEST=	Yes
PKG_ARCH=	*

MODPY_ADJ_FILES = qemuwrapper/qemuwrapper.py

pre-configure:
	cd ${WRKSRC}/src/GNS3; ${SUBST_CMD} \
		Application.py Config/Defaults.py QemuManager.py

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/libexec/gns3
	${INSTALL_SCRIPT} ${WRKSRC}/qemuwrapper/qemuwrapper.py ${PREFIX}/libexec/gns3

.include <bsd.port.mk>
