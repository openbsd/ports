# bump net/dnsdist when updating (static link)

GH_ACCOUNT =	google
GH_PROJECT =	boringssl
GH_COMMIT =	e724ef02089bf2bb494203231fc5cb62acc2fad6
DISTNAME =	boringssl-20240912

SITES.mods =	https://proxy.golang.org/

DISTFILES +=	${GH_DISTFILE}
# can't use GH_DISTFILE because EXTRACT_ONLY does not understand DISTFILES {}
EXTRACT_ONLY =	${ALL_DISTFILES:Mboringssl*}

BORING_GOMOD +=	filippo.io/mlkem768	v0.0.0-20240821141156-859a9b3f2ff6
BORING_GOMOD +=	golang.org/x/crypto	v0.26.0
BORING_GOMOD +=	golang.org/x/net	v0.27.0
BORING_GOMOD +=	golang.org/x/sys	v0.24.0
BORING_GOMOD +=	golang.org/x/term	v0.23.0

.for _modpath _modver in ${BORING_GOMOD}
DISTFILES.mods +=	go_modules/{}${_modpath}/@v/${_modver}.zip
DISTFILES.mods +=	go_modules/{}${_modpath}/@v/${_modver}.mod
.endfor

WANTLIB += ${COMPILER_LIBCXX} c m

# C++14
COMPILER =		base-clang ports-gcc

MODULES =		devel/cmake
CONFIGURE_ARGS +=	-DCMAKE_INSTALL_PREFIX=${PREFIX}/eboringssl

BUILD_DEPENDS =		lang/go

TEST_ENV =		GOPROXY=file://${DISTDIR}/go_modules

FIX_CLEANUP_PERMISSIONS =	Yes

.if ${MACHINE_ARCH} == i386
CFLAGS +=		-msse2
CXXFLAGS +=		-msse2
.endif

do-test:
	${SETENV} ${ALL_TEST_ENV} ninja -C ${WRKBUILD} -j ${MAKE_JOBS} run_tests

.include <bsd.port.mk>
