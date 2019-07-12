# $OpenBSD: Makefile,v 1.25 2019/07/12 20:46:08 sthen Exp $

COMMENT=	graphical network simulator

MODPY_EGG_VERSION = 0.8.7
DISTNAME=	GNS3-${MODPY_EGG_VERSION}-src
PKGNAME=	gns3-${MODPY_EGG_VERSION}

CATEGORIES=	emulators

HOMEPAGE=	http://www.gns3.net/

# GPLv2 only
PERMIT_PACKAGE=	Yes

MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=gns-3/}

MODULES=	lang/python
RUN_DEPENDS=	x11/py-qt4 \
		emulators/dynagen \
		emulators/qemu

WRKDIST=	${WRKDIR}/gns3-legacy-GNS3-${MODPY_EGG_VERSION}
NO_TEST=	Yes

MODPY_ADJ_FILES = qemuwrapper/qemuwrapper.py

pre-configure:
	${SUBST_CMD} ${WRKSRC}/setup.py \
		${WRKSRC}/src/GNS3/{Application,Config/Defaults,QemuManager}.py

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/libexec/gns3
	${INSTALL_SCRIPT} ${WRKSRC}/qemuwrapper/qemuwrapper.py ${PREFIX}/libexec/gns3

.include <bsd.port.mk>
