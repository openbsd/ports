# $OpenBSD: Makefile,v 1.7 2013/08/16 22:04:41 sthen Exp $

VMEM_WARNING =		Yes

ONLY_FOR_ARCHS =	amd64

COMMENT =		fast implementation of the Python language

V =			2.0.2
DISTNAME =		pypy-${V}-src
PKGNAME =		pypy-${V}
REVISION =		1
BOOTSTRAP-amd64 =	pypy-bootstrap-amd64-$V-1.tar.xz

CATEGORIES =		lang

HOMEPAGE =		http://pypy.org/

MAINTAINER =		Laurence Tratt <laurie@tratt.net>

# PyPy is MIT; the Python libs it comes with have the same license as Python
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB +=		bz2 c crypto curses expat ffi m pthread ssl util z

MASTER_SITES =		https://bitbucket.org/pypy/pypy/downloads/
MASTER_SITES0 =		http://spacehopper.org/mirrors/
EXTRACT_SUFX =		.tar.bz2

PSEUDO_FLAVORS =	no_bootstrap
FLAVOR ?=

DIST_SUBDIR =		pypy
DISTFILES =		${DISTNAME}${EXTRACT_SUFX}
.if defined(BOOTSTRAP-${MACHINE_ARCH}) && !${FLAVOR:Mno_bootstrap}
DISTFILES +=		${BOOTSTRAP-${MACHINE_ARCH}}:0
.endif
# if adding archs, list *all* bootstraps in SUPDISTFILES
SUPDISTFILES =		${BOOTSTRAP-amd64}:0

MODULES +=		devel/gettext lang/python gcc4
MODPY_VERSION =		2.7
MODGCC4_ARCHS =		*
MODGCC4_LANGS =		c c++

USE_GMAKE =		Yes
BUILD_DEPENDS =		textproc/py-sphinx

WRKDIST =		${WRKDIR}/pypy-${V}-src

post-extract:
	@if [ `ulimit -d` -lt $$((4*1024*1024)) ]; then \
	    echo datasize limit is too low - amd64 build takes approx 4GB; \
	    exit 1; fi
.if !${FLAVOR:Mno_bootstrap}
	echo '#!/bin/sh' > ${WRKDIR}/bin/pypy
	echo 'LD_LIBRARY_PATH=${WRKDIR}/bootstrap/system-libs exec ${WRKDIR}/bootstrap/bin/pypy "$$@"' >> ${WRKDIR}/bin/pypy
	chmod +x ${WRKDIR}/bin/pypy
.endif

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
	cd ${WRKDIR}/usession/testing_1 && ${SETENV} ${MAKE_ENV} ${MAKE_PROGRAM}

do-install:
	mkdir -p ${PREFIX}/pypy/bin
	${INSTALL_PROGRAM} ${WRKDIR}/usession/testing_1/pypy-c ${PREFIX}/pypy/bin/pypy
	${INSTALL_DATA_DIR} ${PREFIX}/pypy/include
	cp -rp ${WRKSRC}/include/* ${PREFIX}/pypy/include
	chown -R ${SHAREOWN}:${SHAREGRP} ${PREFIX}/pypy/include
	${INSTALL_DATA_DIR} ${PREFIX}/pypy/lib_pypy
	${INSTALL_DATA_DIR} ${PREFIX}/pypy/lib-python/2.7
	cp -rp ${WRKSRC}/lib_pypy/* ${PREFIX}/pypy/lib_pypy
	cp -rp ${WRKSRC}/lib-python/2.7/* ${PREFIX}/pypy/lib-python/2.7
	${PREFIX}/pypy/bin/pypy -m compileall ${PREFIX}/pypy/lib_pypy
	find ${PREFIX}/pypy/lib-python/2.7 -name "*.py" | grep -v test \
	  | xargs ${PREFIX}/pypy/bin/pypy -m compileall
	chown -R ${SHAREOWN}:${SHAREGRP} ${PREFIX}/pypy/lib_pypy
	chown -R ${SHAREOWN}:${SHAREGRP}  ${PREFIX}/pypy/lib-python/2.7
	cd ${PREFIX}/bin && ln -s ../pypy/bin/pypy

PYPY_PKG = ${PACKAGE_REPOSITORY}/${MACHINE_ARCH}/all/${FULLPKGNAME}.tgz

.include <bsd.port.mk>

# The bootstrap-based build process uses less memory and is faster,
# but if you need to build a new bootstrap because the existing one no
# longer runs, use FLAVOR=no_bootstrap to do a cpython-based build.
# Expect 5.3GB+ memory usage on amd64.
bootstrap: ${PYPY_PKG}
	mkdir -p ${WRKDIR}/prepare/bootstrap/system-libs
	cd ${WRKDIR}/prepare/bootstrap && tar zxf ${PYPY_PKG}
	rm -rf ${WRKDIR}/prepare/bootstrap/{+*,info,man}
	for i in `ldd ${WRKDIR}/prepare/bootstrap/bin/pypy | grep 'lib/' | \
	    awk '{ print $$7 }'` ; do \
		cp $$i ${WRKDIR}/prepare/bootstrap/system-libs; done
	cd ${WRKDIR}/prepare && tar cf - bootstrap | \
	    xz > ${FULLDISTDIR}/${BOOTSTRAP-${MACHINE_ARCH}}
