# $OpenBSD: Makefile,v 1.11 2002/02/23 00:11:23 matt Exp $

COMMENT=		"python imaging library"

DISTNAME=		Imaging-1.1.2
PKGNAME=		py-${DISTNAME}
CATEGORIES=		graphics
NEED_VERSION=		1.489

HOMEPAGE=		http://www.pythonware.com/products/pil/

MAINTAINER=		Sebastian Stark <seb@todesplanet.de>

# PIL Software License
# Permission to use, copy, modify and distribute freely.
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=		http://www.pythonware.com/downloads/

NO_REGRESS=		Yes

PYTHON_VER=		2.1
PY_MODULE=		${LOCALBASE}/lib/python${PYTHON_VER}/lib-dynload/_tkinter.so

BUILD_DEPENDS=		:python-tkinter-${PYTHON_VER}*:lang/python/${PYTHON_VER} \
			:python-${PYTHON_VER}*:lang/python/${PYTHON_VER}
RUN_DEPENDS=		${BUILD_DEPENDS}
LIB_DEPENDS=		jpeg.62::graphics/jpeg

SUBST_VARS=		PYTHON_VER

CONFIGURE_STYLE=	gnu
ALL_TARGET=

LIB_IMAGING=		${WRKSRC}/libImaging
SITE_PACKAGES=		${PREFIX}/lib/python${PYTHON_VER}/site-packages
PYTHON_INCLUDE_DIR=	${PREFIX}/include/python${PYTHON_VER}
PIL_INCLUDES=		ImConfig.h ImPlatform.h Imaging.h

do-configure:
	@sed -e "s|@LOCALBASE@|${LOCALBASE}|g" -e "s|@X11BASE@|${X11BASE}|g" \
		${FILESDIR}/Setup >${WRKSRC}/Setup
	@cd ${LIB_IMAGING}; \
		${SETENV} ${CONFIGURE_ENV} ./configure ${CONFIGURE_ARGS}
	@cd ${WRKSRC}; ${MAKE_PROGRAM} -f Makefile.pre.in boot

pre-build:
	@cd ${LIB_IMAGING}; ${MAKE_PROGRAM} CC="${CC}" OPT="${CFLAGS}"

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
