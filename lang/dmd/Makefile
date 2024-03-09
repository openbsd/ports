BROKEN=		needs new bootstrap

# i386 forthcoming
ONLY_FOR_ARCHS =	amd64

# No BT CFI yet.
USE_NOBTCFI =	Yes

V =		2.106.0
COMMENT =	reference compiler for the D programming language
DISTFILES =		dmd-${V}{v${V}}.tar.gz
DISTFILES.boot= 	dmd-${V}-bootstrap.tar.gz
DISTFILES.phobos = 	phobos-${V}{v${V}}.tar.gz
PKGNAME =	dmd-${V}
CATEGORIES =	lang

HOMEPAGE =	https://dlang.org/
MAINTAINER =	Brian Callahan <bcallah@openbsd.org>

# Boost Software License 1.0
PERMIT_PACKAGE =	Yes

WANTLIB += c c++abi execinfo m pthread

SITES.boot =	https://github.com/ibara/dmd/releases/download/bootstrap-${V}/
SITES =		https://github.com/dlang/dmd/archive/refs/tags/
SITES.phobos =	https://github.com/dlang/phobos/archive/refs/tags/

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
	mv ${WRKSRC}/phobos-${V} ${WRKSRC}/phobos
	chmod 644 ${WRKDIR}/dmd-bootstrap/openbsd/bin64/lib*.so* # XXX
	cp /usr/lib/libc.so.98.* ${WRKDIR}/dmd-bootstrap/openbsd/bin64/ # XXX

# We need to do this manually.
# Yes, this is all really correct.
do-build:
	cd ${WRKDIR}/phobos && \
		${SETENV} ${MAKE_ENV} ${MAKE_PROGRAM} -f ${MAKE_FILE} && \
			${SETENV} ${MAKE_PROGRAM} -f ${MAKE_FILE} install
	cd ${WRKDIR}/dmd/druntime && \
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
	${INSTALL_MAN} ${WRKDIR}/dmd/compiler/docs/man/man5/dmd.conf.5 \
		${PREFIX}/man/man5
	${INSTALL_DATA_DIR} ${PREFIX}/include/dmd
	cp -R ${WRKDIR}/install/src/{druntime,phobos} ${PREFIX}/include/dmd
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/dmd
	${INSTALL_DATA} ${WRKDIR}/install/phobos-LICENSE.txt \
		${PREFIX}/share/doc/dmd/LICENSE.txt
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/dmd
	cp -R ${WRKDIR}/dmd/compiler/samples/* ${PREFIX}/share/examples/dmd
	${INSTALL_DATA_DIR} ${PREFIX}/share/dmd
	${SUBST_CMD} -c -m 444 ${FILESDIR}/dmd.conf \
		${PREFIX}/share/dmd/dmd.conf

.include <bsd.port.mk>
