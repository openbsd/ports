# i386 forthcoming
ONLY_FOR_ARCHS =	amd64

V =		2.099.0
COMMENT =	reference compiler for the D programming language
DISTFILES =	dmd-${V}{v${V}}.tar.gz:1 \
		dmd-${V}-bootstrap.tar.gz:0 \
		druntime-${V}{v${V}}.tar.gz:2 \
		phobos-${V}{v${V}}.tar.gz:3
PKGNAME =	dmd-${V}
CATEGORIES =	lang

HOMEPAGE =	https://dlang.org/
MAINTAINER =	Brian Callahan <bcallah@openbsd.org>

# Boost Software License 1.0
PERMIT_PACKAGE =	Yes

WANTLIB += c c++abi execinfo m pthread

MASTER_SITES0 =	https://github.com/ibara/dmd/releases/download/bootstrap-${V}/
MASTER_SITES1 =	https://github.com/dlang/dmd/archive/refs/tags/
MASTER_SITES2 =	https://github.com/dlang/druntime/archive/refs/tags/
MASTER_SITES3 =	https://github.com/dlang/phobos/archive/refs/tags/

USE_GMAKE =	Yes
MAKE_ENV =	HOST_CXX="${CXX}" \
		HOST_DMD="${WRKDIR}/dmd-bootstrap/openbsd/bin${MODEL}/dmd" \
		LD_LIBRARY_PATH="${WRKSRC}/dmd-bootstrap/openbsd/bin${MODEL}"
MAKE_FILE =	posix.mak

NO_TEST =	Yes

# MODEL depends on arch.
.if ${MACHINE_ARCH:Mamd64}
MODEL = 64
.else
MODEL = 32
.endif

# Prevent churn.
post-extract:
	mv ${WRKSRC}/dmd-${V} ${WRKSRC}/dmd
	mv ${WRKSRC}/druntime-${V} ${WRKSRC}/druntime
	mv ${WRKSRC}/phobos-${V} ${WRKSRC}/phobos

# We need to do this manually.
# Yes, this is all really correct.
do-build:
	cd ${WRKDIR}/phobos && \
		${SETENV} ${MAKE_ENV} ${MAKE_PROGRAM} -f ${MAKE_FILE} && \
			${SETENV} ${MAKE_PROGRAM} -f ${MAKE_FILE} install
	cd ${WRKDIR}/druntime && \
		${SETENV} ${MAKE_ENV} ${MAKE_PROGRAM} -f ${MAKE_FILE} && \
			${SETENV} ${MAKE_PROGRAM} -f ${MAKE_FILE} install
	mkdir ${WRKDIR}/install/openbsd/bin${MODEL}
	cp ${WRKDIR}/dmd/generated/openbsd/release/${MODEL}/dmd \
		${WRKDIR}/install/openbsd/bin${MODEL}

# We need to do this manually too.
do-install:
	${INSTALL_PROGRAM} ${WRKDIR}/install/openbsd/bin${MODEL}/dmd \
		${PREFIX}/bin
	${INSTALL_DATA} ${WRKDIR}/install/openbsd/lib${MODEL}/libphobos2.a \
		${PREFIX}/lib
	${INSTALL_MAN} ${WRKDIR}/dmd-bootstrap/dmd.1 ${PREFIX}/man/man1
	${INSTALL_MAN} ${WRKDIR}/dmd/docs/man/man5/dmd.conf.5 \
		${PREFIX}/man/man5
	${INSTALL_DATA_DIR} ${PREFIX}/include/dmd
	cp -R ${WRKDIR}/install/src/{druntime,phobos} ${PREFIX}/include/dmd
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/dmd
	${INSTALL_DATA} ${WRKDIR}/install/phobos-LICENSE.txt \
		${PREFIX}/share/doc/dmd/LICENSE.txt
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/dmd
	cp -R ${WRKDIR}/dmd/samples/* ${PREFIX}/share/examples/dmd
	${INSTALL_DATA_DIR} ${PREFIX}/share/dmd
	${SUBST_CMD} -c -m 444 ${FILESDIR}/dmd.conf \
		${PREFIX}/share/dmd/dmd.conf

.include <bsd.port.mk>
