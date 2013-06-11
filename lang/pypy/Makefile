# $OpenBSD: Makefile,v 1.1.1.1 2013/06/11 22:10:46 edd Exp $

# Oh boy. "5495684 maximum resident set size" on amd64
VMEM_WARNING =		Yes

ONLY_FOR_ARCHS =	amd64

COMMENT =		fast implementation of the Python language

V =			2.0.2
DISTNAME =		pypy-${V}-src
PKGNAME =		pypy-${V}

CATEGORIES =		lang

HOMEPAGE =		http://pypy.org/

MAINTAINER =		Laurence Tratt <laurie@tratt.net>

# PyPy is MIT; the Python libs it comes with have the same license as Python
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB +=		bz2 c crypto curses expat ffi m pthread ssl util z

MASTER_SITES =		https://bitbucket.org/pypy/pypy/downloads/
EXTRACT_SUFX =		.tar.bz2

DIST_SUBDIR =		pypy

MODULES +=		devel/gettext lang/python gcc4
MODPY_VERSION =		2.7
MODGCC4_ARCHS =		*
MODGCC4_LANGS =		c c++

USE_GMAKE =		Yes
BUILD_DEPENDS =		textproc/py-sphinx

WRKDIST =		${WRKDIR}/pypy-${V}-src

do-build:
	cd ${WRKSRC}/pypy/goal/ && ${SETENV} ${MAKE_ENV} \
	  PYPY_USESSION_DIR=${WRKDIR}/usession PYPY_CTYPES_DIR=${WRKDIR}/ctypes \
	  ${MODPY_BIN} ../../rpython/bin/rpython --source --opt=jit
	cd ${WRKDIR}/usession/testing_1 && ${SETENV} ${MAKE_ENV} ${MAKE_PROGRAM}

do-install:
	mkdir -p ${PREFIX}/pypy/bin
	${INSTALL_PROGRAM} ${WRKDIR}/usession/testing_1/pypy-c ${PREFIX}/pypy/bin/pypy
	${INSTALL_DATA_DIR} ${PREFIX}/pypy/include
	cp -rp ${WRKSRC}/include/* ${PREFIX}/pypy/include
	chown -R ${SHAREOWN}:${SHAREGRP} ${PREFIX}/pypy/include
	${INSTALL_DATA_DIR} ${PREFIX}/pypy/lib_pypy
	cp -rp ${WRKSRC}/lib_pypy/* ${PREFIX}/pypy/lib_pypy
	chown -R ${SHAREOWN}:${SHAREGRP} ${PREFIX}/pypy/lib_pypy
	${INSTALL_DATA_DIR} ${PREFIX}/pypy/lib-python/2.7
	cp -rp ${WRKSRC}/lib-python/2.7/* ${PREFIX}/pypy/lib-python/2.7
	chown -R ${SHAREOWN}:${SHAREGRP}  ${PREFIX}/pypy/lib-python/2.7
	cd ${PREFIX}/bin && ln -s ../pypy/bin/pypy

.include <bsd.port.mk>
