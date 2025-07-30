# bump net/dnsdist when updating (static link)

GH_ACCOUNT =	google
GH_PROJECT =	boringssl
GH_COMMIT =	47dc1fc3b0b79140049a8c907b57f2243f04447b
DISTNAME =	boringssl-20250728

SITES.mods =	https://proxy.golang.org/

DISTFILES +=	${GH_DISTFILE}
# can't use GH_DISTFILE because EXTRACT_ONLY does not understand DISTFILES {}
EXTRACT_ONLY =	${ALL_DISTFILES:Mboringssl*}

BOGING_GOMOD +=	cloud.google.com/go/storage	v1.51.0
BORING_GOMOD +=	filippo.io/edwards25519		v1.1.0
BORING_GOMOD +=	golang.org/x/crypto		v0.37.0
BORING_GOMOD +=	golang.org/x/net		v0.39.0
BORING_GOMOD +=	golang.org/x/sys		v0.32.0
BORING_GOMOD +=	golang.org/x/term		v0.31.0
BORING_GOMOD +=	google.golang.org/api		v0.229.0

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
