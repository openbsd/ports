# Backend only supports amd64 and i386
ONLY_FOR_ARCHS =	amd64 i386

# No BT CFI yet.
USE_NOBTCFI =	Yes

V =		2.109.0
BOOTSTRAP =	2.109.0
COMMENT =	reference compiler for the D programming language
DISTFILES =		dmd-${V}{v${V}}.tar.gz
DISTFILES.boot= 	dmd-${BOOTSTRAP}-bootstrap.tar.gz
DISTFILES.phobos = 	phobos-${V}{v${V}}.tar.gz
PKGNAME =	dmd-${V}
CATEGORIES =	lang

HOMEPAGE =	https://dlang.org/
MAINTAINER =	Brian Callahan <bcallah@openbsd.org>

# Boost Software License 1.0
PERMIT_PACKAGE =	Yes

WANTLIB += c c++abi execinfo m pthread

SITES.boot =	https://github.com/ibara/dmd/releases/download/bootstrap-${BOOTSTRAP}/
SITES =		https://github.com/dlang/dmd/archive/refs/tags/
SITES.phobos =	https://github.com/dlang/phobos/archive/refs/tags/

USE_GMAKE =	Yes
MAKE_ENV =	HOST_CXX="${CXX}" \
		HOST_DMD="${WRKDIR}/dmd-bootstrap/openbsd/bin${MODEL}/dmd"

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

# We need to do this manually.
# Yes, this is all really correct.
do-build:
	cd ${WRKDIR}/phobos && \
		${SETENV} ${MAKE_ENV} ${MAKE_PROGRAM} && \
			${SETENV} ${MAKE_PROGRAM} install
	cd ${WRKDIR}/dmd/druntime && \
		${SETENV} ${MAKE_ENV} ${MAKE_PROGRAM} && \
			${SETENV} ${MAKE_PROGRAM} install
	mkdir ${WRKDIR}/install/openbsd/bin${MODEL}
	cp ${WRKDIR}/dmd/generated/openbsd/release/${MODEL}/dmd \
		${WRKDIR}/install/openbsd/bin${MODEL}
	cd ${WRKDIR}/dmd/compiler/docs && \
		${SETENV} ${MAKE_ENV} ${MAKE_PROGRAM} build

# We need to do this manually too.
do-install:
	${INSTALL_PROGRAM} ${WRKDIR}/install/openbsd/bin${MODEL}/dmd \
		${PREFIX}/bin
	${INSTALL_DATA} ${WRKDIR}/install/openbsd/lib${MODEL}/libphobos2.a \
		${PREFIX}/lib
	${INSTALL_MAN} ${WRKSRC}/dmd/generated/docs/man/man1/dmd.1 \
		${PREFIX}/man/man1
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
