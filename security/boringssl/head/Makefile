GH_ACCOUNT =	google
GH_PROJECT =	boringssl
GH_COMMIT =	fc953df2352e1c1bcb34cb5f75a0e409014c1690
DISTNAME =	boringssl-20240516

SITES.mods =	https://proxy.golang.org/

DISTFILES +=	${GH_DISTFILE}
# can't use GH_DISTFILE because EXTRACT_ONLY does not understand DISTFILES {}
EXTRACT_ONLY =	${ALL_DISTFILES:Mboringssl*}

BORING_GOMOD +=	golang.org/x/crypto	v0.17.0
BORING_GOMOD +=	golang.org/x/net	v0.17.0
BORING_GOMOD +=	golang.org/x/sys	v0.15.0
BORING_GOMOD +=	golang.org/x/term	v0.15.0

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
