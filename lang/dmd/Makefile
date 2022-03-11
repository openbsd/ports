# i386 forthcoming
ONLY_FOR_ARCHS =	amd64

V =		2.098.0
COMMENT =	reference compiler for the D programming language
DISTFILES =	dmd-${V}.tar.gz \
		dmd-${V}-bootstrap-p0.tar.gz \
		druntime-${V}.tar.gz \
		phobos-${V}.tar.gz
PKGNAME =	dmd-${V}
REVISION =	0
CATEGORIES =	lang

HOMEPAGE =	https://dlang.org/
MAINTAINER =	Brian Callahan <bcallah@openbsd.org>

# Boost Software License 1.0
PERMIT_PACKAGE =	Yes

WANTLIB += c c++abi execinfo m pthread

MASTER_SITES =	https://github.com/ibara/dmd/releases/download/bootstrap-${V}/

USE_GMAKE =	Yes
MAKE_ENV =	HOST_CXX="${CXX}" \
		HOST_DMD="${WRKDIR}/dmd-${V}-bootstrap/openbsd/bin${MODEL}/dmd" \
		LD_LIBRARY_PATH="${WRKSRC}/dmd-${V}-bootstrap/openbsd/bin${MODEL}"
MAKE_FILE =	posix.mak

NO_TEST =	Yes

# MODEL depends on arch.
.if ${MACHINE_ARCH:Mamd64}
MODEL = 64
.else
MODEL = 32
.endif

# Fix up the build system.
do-gen:
	sed -i "s,TOPDIR,${WRKDIR},g" \
		${WRKDIR}/druntime-${V}/posix.mak \
		${WRKDIR}/phobos-${V}/posix.mak

# We need to do this manually.
# Yes, this is all really correct.
do-build:
	cd ${WRKDIR}/phobos-${V} && \
		${SETENV} ${MAKE_ENV} ${MAKE_PROGRAM} -f ${MAKE_FILE} && \
			${SETENV} ${MAKE_PROGRAM} -f ${MAKE_FILE} install
	cd ${WRKDIR}/druntime-${V} && \
		${SETENV} ${MAKE_ENV} ${MAKE_PROGRAM} -f ${MAKE_FILE} && \
			${SETENV} ${MAKE_PROGRAM} -f ${MAKE_FILE} install
	mkdir ${WRKDIR}/install/openbsd/bin${MODEL}
	cp ${WRKDIR}/dmd-${V}/generated/openbsd/release/${MODEL}/dmd \
		${WRKDIR}/install/openbsd/bin${MODEL}

# We need to do this manually too.
do-install:
	${INSTALL_PROGRAM} ${WRKDIR}/install/openbsd/bin${MODEL}/dmd \
		${PREFIX}/bin
	${INSTALL_DATA} ${WRKDIR}/install/openbsd/lib${MODEL}/libphobos2.a \
		${PREFIX}/lib
	${INSTALL_MAN} ${WRKDIR}/dmd-${V}/dmd.1 ${PREFIX}/man/man1
	${INSTALL_MAN} ${WRKDIR}/dmd-${V}/docs/man/man5/dmd.conf.5 \
		${PREFIX}/man/man5
	${INSTALL_DATA_DIR} ${PREFIX}/include/dmd
	cp -R ${WRKDIR}/install/src/{druntime,phobos} ${PREFIX}/include/dmd
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/dmd
	${INSTALL_DATA} ${WRKDIR}/install/phobos-LICENSE.txt \
		${PREFIX}/share/doc/dmd/LICENSE.txt
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/dmd
	cp -R ${WRKDIR}/dmd-${V}/samples/* ${PREFIX}/share/examples/dmd
	${INSTALL_DATA_DIR} ${PREFIX}/share/dmd
	${SUBST_CMD} -c -m 444 ${FILESDIR}/dmd.conf \
		${PREFIX}/share/dmd/dmd.conf

.include <bsd.port.mk>
