# $OpenBSD: Makefile,v 1.6 2001/09/03 07:57:18 shell Exp $

COMMENT=		"python imaging library"

DISTNAME=		Imaging-1.1.2
PKGNAME=		py-${DISTNAME}
CATEGORIES=		graphics
NEED_VERSION=		1.448

HOMEPAGE=		http://www.pythonware.com/products/pil/

MAINTAINER=		Sebastian Stark <seb@todesplanet.de>

# PIL Software License
# Permission to use, copy, modify and distribute freely.
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=		http://www.pythonware.com/downloads/

PYTHON_VER=		python2.1
PY_MODULE=		${LOCALBASE}/lib/${PYTHON_VER}/lib-dynload/_tkinter.so

BUILD_DEPENDS=		${PY_MODULE}::lang/python,tk
RUN_DEPENDS=		${BUILD_DEPENDS}
LIB_DEPENDS=		jpeg.62::graphics/jpeg

SUBST_VARS=		PYTHON_VER

ALL_TARGET=

LIB_IMAGING=		${WRKSRC}/libImaging
SITE_PACKAGES=		${PREFIX}/lib/${PYTHON_VER}/site-packages
PYTHON_INCLUDE_DIR=	${PREFIX}/include/${PYTHON_VER}
PIL_INCLUDES=		ImConfig.h ImPlatform.h Imaging.h

post-extract:
	cp ${FILESDIR}/Setup ${WRKSRC}

do-configure:
	cd ${LIB_IMAGING} && ./configure && make
	cd ${WRKSRC} && ${MAKE} -f Makefile.pre.in boot
	cd ${WRKSRC} && perl -pi -e 's/(^LDSHARED=.*)/$$1 -Bstatic/' Makefile

do-install:
# put all files in a subdir and just put a .pth file in ${SITE_PACKAGES}
	${INSTALL_DATA_DIR} ${SITE_PACKAGES}/PIL
	for a in ${WRKSRC}/*.so ${WRKSRC}/PIL/*; do \
		${INSTALL_DATA} $$a ${SITE_PACKAGES}/PIL; done
	${INSTALL_DATA} ${WRKSRC}/PIL.pth ${SITE_PACKAGES}/PIL.pth
	${INSTALL_DATA_DIR} ${PYTHON_INCLUDE_DIR}
.for a in ${PIL_INCLUDES}
	${INSTALL_DATA} ${LIB_IMAGING}/$a ${PYTHON_INCLUDE_DIR}
.endfor
	${INSTALL_SCRIPT_DIR} ${PREFIX}/share/examples/py-Imaging
	for a in ${WRKSRC}/Scripts/*; do \
		${INSTALL_SCRIPT} $$a ${PREFIX}/share/examples/py-Imaging; done

.include <bsd.port.mk>
