# $OpenBSD: Makefile,v 1.3 2001/07/18 10:59:01 naddy Exp $

COMMENT=		"python imaging library"

DISTNAME=		Imaging-1.1.2
PKGNAME=		py-${DISTNAME}
	
CATEGORIES=		graphics
NEED_VERSION=		1.422

HOMEPAGE=		http://www.pythonware.com/products/pil/

MAINTAINER=		Sebastian Stark <seb@todesplanet.de>

# PIL Software License
# Permission to use, copy, modify and distribute freely.
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=		http://www.pythonware.com/downloads/

# can be built with python2.x xor python1.5
# change PY2 according to the current python port
PY2=			2.1
FLAVORS=		${PY2} 1.5

# try to determine python version, if installed.
.if exists(/usr/local/bin/python)
V!= echo 'import sys, string; print string.split(sys.version)[0]' | python
.endif
FLAVOR?=		${V}

# set -deps corresponding
CHOICE=${FLAVOR:L:N"2.?":N"1.5"}
.if ${CHOICE} == "${PY2}"
BUILD_DEPENDS=          python${PY2}::lang/python,tk
PYTHON_VER=		python${PY2}
.elif ${CHOICE} == "1.5"
BUILD_DEPENDS=          python1.5::lang/python15,tk
PYTHON_VER=		python1.5
.else
# no FLAVOR has been set nor python is installed
ERRORS+=	"Fatal: Conflicting flavor: ${FLAVOR}" \
		"   You have to select either ${PY2} or 1.5, not both." \
		"   This can also mean, you have no python installed at all." \
		"   If you specify FLAVOR, the corresponding python version" \
		"   will be installed. (man ports)"
.endif

RUN_DEPENDS=		${BUILD_DEPENDS}
LIB_DEPENDS=		jpeg.6::graphics/jpeg

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
