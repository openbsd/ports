# $OpenBSD: Makefile,v 1.13 2002/06/09 05:36:43 wilfried Exp $

COMMENT=		"python imaging library"
COMMENT-examples=	"examples for python imaging library"

DISTNAME=		Imaging-1.1.2
PKGNAME=		py-${DISTNAME}
CATEGORIES=		graphics
NEED_VERSION=		1.505

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
FLAVORS=		python2.1
FLAVOR?=

.if ${FLAVOR:L} == "python2.1"
PYTHON_VER=		2.1
.else
PYTHON_VER=		2.2
.endif

BUILD_DEPENDS=		:python-tkinter-${PYTHON_VER}*:lang/python/${PYTHON_VER},-tkinter 
RUN_DEPENDS=		${BUILD_DEPENDS}
LIB_DEPENDS=		jpeg.62::graphics/jpeg

MULTI_PACKAGES=		-examples
SUBPACKAGE?=

# The examples subpackage is not flavored.
FULLPKGNAME-examples=	${PKGNAME}-examples
.if defined(PACKAGING) && ${SUBPACKAGE} == "-examples"
RUN_DEPENDS=		:py-Imaging-*:graphics/py-Imaging
LIB_DEPENDS=
.endif

SUBST_VARS=		PYTHON_VER

CONFIGURE_STYLE=	gnu
CONFIGURE_ARGS+=	--with-jpeg=${LOCALBASE}/lib
ALL_TARGET=

LIB_IMAGING=		${WRKSRC}/libImaging
SITE_PACKAGES=		${PREFIX}/lib/python${PYTHON_VER}/site-packages
PIL_INCLUDES=		ImConfig.h ImPlatform.h Imaging.h
PYTHON_INCLUDE_DIR=	${PREFIX}/include/python${PYTHON_VER}

do-configure:
	@sed -e "s|@LOCALBASE@|${LOCALBASE}|g" -e "s|@X11BASE@|${X11BASE}|g" \
		${FILESDIR}/Setup >${WRKSRC}/Setup
	@cd ${LIB_IMAGING}; \
		${SETENV} ${CONFIGURE_ENV} ./configure ${CONFIGURE_ARGS}
	@cd ${WRKSRC}; ${MAKE_PROGRAM} -f Makefile.pre.in \
		PYTHON=python${PYTHON_VER} boot

pre-build:
	@cd ${LIB_IMAGING} && \
		${MAKE_ENV} ${MAKE_PROGRAM} CC="${CC}" OPT="${CFLAGS}"

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

