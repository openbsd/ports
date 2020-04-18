# $OpenBSD: Makefile,v 1.41 2020/04/18 10:15:26 sthen Exp $

ONLY_FOR_ARCHS =	aarch64 amd64

COMMENT =		fast implementation of the Python language

# To update PyPy to a new version:
#   * Bump ${V} but set ${BOOTSTRAP_V} to the old ${V} (keeping
#     any bootstrap version suffix intact, e.g. "-1")
#   * make makesum
#   * make plist (fix anything along the way)
#   * make package
#   * Set BOOTSTRAP_V back to the new version in the port Makefile
#   * make bootstrap && make makesum (which will put a new PyPy bootstrap
#     into ${FULLDISTDIR} such that subsequent builds will use it)
#   * make clean && make clean=packages
#   * make package (using the new bootstrap build)
#
# If the old bootstrap no longer works (e.g. due to an ABI change), then
# you can use the no_bootstrap FLAVOR to make a new bootstrap. This uses
# CPython to build PyPy instead, which is much slower and takes more RAM.

V =			7.2.0
BOOTSTRAP_V =		7.2.0
DISTNAME =		pypy2.7-v${V}-src
PKGNAME =		pypy-${V}
BOOTSTRAP-amd64 =	pypy-bootstrap-amd64-${BOOTSTRAP_V}.tar.xz
BOOTSTRAP-aarch64 =	pypy-bootstrap-aarch64-${BOOTSTRAP_V}-1.tar.xz
# list bootstraps for all arches in SUPDISTFILES
SUPDISTFILES +=		${BOOTSTRAP-amd64}:0
SUPDISTFILES +=		${BOOTSTRAP-aarch64}:0

CATEGORIES =		lang

HOMEPAGE =		https://pypy.org/

MAINTAINER =		Edd Barrett <edd@openbsd.org>

# PyPy is MIT; the Python libs it comes with have the same license as Python
PERMIT_PACKAGE =	Yes

WANTLIB +=		bz2 c crypto curses expat ffi gdbm iconv intl m
WANTLIB +=		panel pthread sqlite3 ssl ${MODTCL_LIB}
WANTLIB +=		${MODTK_LIB} util z

LIB_DEPENDS +=		databases/sqlite3

MASTER_SITES =		https://bitbucket.org/pypy/pypy/downloads/
MASTER_SITES0 =		https://spacehopper.org/mirrors/
EXTRACT_SUFX =		.tar.bz2

PSEUDO_FLAVORS =	no_bootstrap
FLAVOR ?=

DIST_SUBDIR =		pypy
DISTFILES =		${DISTNAME}${EXTRACT_SUFX}
.if defined(BOOTSTRAP-${MACHINE_ARCH}) && !${FLAVOR:Mno_bootstrap}
#   ^^ needed to avoid breakage in arches that don't have pypy
DISTFILES +=		${BOOTSTRAP-${MACHINE_ARCH}}:0
.endif

MODULES +=		lang/python x11/tk
MODPY_VERSION =		2.7
UPDATE_PLIST_ARGS =	-i MODPY_PY_PREFIX \
			-i MODPY_PY0EXTENSION \
			-i MODPY_VERSION \
			-i MACHINE_ARCH

USE_GMAKE =		Yes
BUILD_DEPENDS =		textproc/py-sphinx \
			databases/gdbm \
			${MODTK_BUILD_DEPENDS}
.if ${FLAVOR:Mno_bootstrap}
BUILD_DEPENDS +=	devel/py-cparser
.endif
RUN_DEPENDS =		${MODTK_RUN_DEPENDS} \
			databases/gdbm

post-extract:
	@if [ `ulimit -d` -lt $$((5*1024*1024)) ]; then \
	    echo datasize limit is too low - amd64 build takes approx 5GB; \
	    exit 1; fi
.if !${FLAVOR:Mno_bootstrap}
	echo '#!/bin/sh' > ${WRKDIR}/bin/pypy
	echo 'LD_LIBRARY_PATH=${WRKDIR}/bootstrap/system-libs:${WRKDIR}/bootstrap/pypy/lib exec ${WRKDIR}/bootstrap/bin/pypy "$$@"' >> ${WRKDIR}/bin/pypy
	chmod +x ${WRKDIR}/bin/pypy
.endif

SUBST_VARS +=	MODTK_INCDIR MODTCL_INCDIR MODTK_LIB MODTCL_LIB

pre-configure:
	${SUBST_CMD} ${WRKSRC}/lib_pypy/_tkinter/tklib_build.py
	# prevent crap in the plist
	rm ${WRKSRC}/lib_pypy/_tkinter/tklib_build.py.beforesubst

do-build:
.if ${FLAVOR:Mno_bootstrap}
	cd ${WRKSRC}/pypy/goal/ && ${SETENV} ${MAKE_ENV} \
	  PYPY_USESSION_DIR=${WRKDIR}/usession \
	  PYPY_CTYPES_DIR=${WRKDIR}/ctypes \
	  ${MODPY_BIN} ../../rpython/bin/rpython --source --opt=jit
.else
	cd ${WRKSRC}/pypy/goal/ && ${SETENV} ${MAKE_ENV} \
	  PYPY_GC_MAX_DELTA=300MB \
	  PYPY_USESSION_DIR=${WRKDIR}/usession \
	  PYPY_CTYPES_DIR=${WRKDIR}/ctypes \
	  pypy --jit loop_longevity=300 \
	  ../../rpython/bin/rpython --source --opt=jit
.endif
	cd ${WRKDIR}/usession/testing_1 && ${SETENV} ${MAKE_ENV} \
		${MAKE_PROGRAM} LDFLAGS_LINK="-Wl,-z,wxneeded -pthread"

PYPY_INST_LIB_DIR = ${PREFIX}/pypy/lib
PYPY_LD_LIBRARY_PATH = LD_LIBRARY_PATH=${PYPY_INST_LIB_DIR}
do-install:
	mkdir -p ${PREFIX}/pypy/bin
	mkdir -p ${PYPY_INST_LIB_DIR}
	${INSTALL_PROGRAM} ${WRKDIR}/usession/testing_1/pypy-c \
		${PREFIX}/pypy/bin/pypy
	${INSTALL_PROGRAM} ${WRKDIR}/usession/testing_1/libpypy-c.so \
		${PYPY_INST_LIB_DIR}
	${INSTALL_DATA_DIR} ${PREFIX}/pypy/include
	cp -rp ${WRKSRC}/include/* ${PREFIX}/pypy/include
	chown -R ${SHAREOWN}:${SHAREGRP} ${PREFIX}/pypy/include
	${INSTALL_DATA_DIR} ${PREFIX}/pypy/lib_pypy
	${INSTALL_DATA_DIR} ${PREFIX}/pypy/lib-python/2.7
	cp -rp ${WRKSRC}/lib_pypy/* ${PREFIX}/pypy/lib_pypy
	cp -rp ${WRKSRC}/lib-python/2.7/* ${PREFIX}/pypy/lib-python/2.7
	${PYPY_LD_LIBRARY_PATH} ${PREFIX}/pypy/bin/pypy \
		-m compileall ${PREFIX}/pypy/lib_pypy
	${PYPY_LD_LIBRARY_PATH} ${PREFIX}/pypy/bin/pypy \
		-m compileall -x test ${PREFIX}/pypy/lib-python/2.7
	# make cffi shared objects
	cd ${WRKSRC} && ${PYPY_LD_LIBRARY_PATH} \
		LDFLAGS=-L${LOCALBASE}/lib \
		CPPFLAGS=-I${LOCALBASE}/include \
		PYTHONPATH=`pwd` \
		${PREFIX}/pypy/bin/pypy pypy/tool/build_cffi_imports.py
	find ${PREFIX}/pypy/lib_pypy/ -name '*.[co]' -delete
	chown -R ${SHAREOWN}:${SHAREGRP} ${PREFIX}/pypy/lib_pypy
	chown -R ${SHAREOWN}:${SHAREGRP}  ${PREFIX}/pypy/lib-python/2.7
	cd ${PREFIX}/bin && ln -s ../pypy/bin/pypy
	cd ${PREFIX}/lib && ln -s ../pypy/lib/libpypy-c.so
	# remove patch orig files so they dont appear in the plist
	find ${PREFIX} -name '*.py.orig' -delete

PYPY_PKG = ${PACKAGE_REPOSITORY}/${MACHINE_ARCH}/all/${FULLPKGNAME}.tgz

.include <bsd.port.mk>

# maintainer target to generate a new bootstrap.
bootstrap: ${PYPY_PKG}
	${_PBUILD} mkdir -p ${WRKDIR}/prepare/bootstrap/system-libs
	cd ${WRKDIR}/prepare/bootstrap && ${_PBUILD} tar zxf ${PYPY_PKG}
	${_PBUILD} rm -rf ${WRKDIR}/prepare/bootstrap/{+*,info,man}
	for i in `LD_LIBRARY_PATH=${WRKDIR}/prepare/bootstrap/pypy/lib ldd ${WRKDIR}/prepare/bootstrap/bin/pypy | grep 'lib/' | grep -v 'libpypy-c' | \
	        awk '{ print $$7 }'` ; do \
		${_PBUILD} cp $$i ${WRKDIR}/prepare/bootstrap/system-libs; done
	cd ${WRKDIR}/prepare && tar cf - bootstrap | \
	    xz | ${_PFETCH} tee ${FULLDISTDIR}/${BOOTSTRAP-${MACHINE_ARCH}} > /dev/null
