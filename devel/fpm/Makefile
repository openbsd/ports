BROKEN-i386 =	fails "build fpm (stage1) using the bootstrap (stage0)"
# build  --profile release  --verbose
# *get_anyarray_l* bad logical expression for verbose=RELEASE
# *get_anyarray_l* bad logical expression for list=RELEASE
# *get_anyarray_l* bad logical expression for show-model=RELEASE
# *get_anyarray_l* bad logical expression for tests=RELEASE
# *get_anyarray_l* bad logical expression for no-prune=RELEASE
# [Error] Failed to change directory to 'release'
# STOP 1

COMMENT =	Fortran Package Manager

V =		0.7.0
REVISION =	1

DIST_TUPLE +=	github fortran-lang fpm v0.7.0 .
# external dependencies (see fpm.toml)
DIST_TUPLE +=	github toml-f toml-f e49f5523e4ee67db6628618864504448fb8c8939 \
		vendor/toml-f # Apache-2.0, MIT
DIST_TUPLE +=	github urbanjost M_CLI2 90a1a146e19c8ad37b0469b8cbd04bc28eb67a50 \
		vendor/M_CLI2 # Unlicense

CATEGORIES =	devel

HOMEPAGE =	https://fpm.fortran-lang.org/

# MIT
PERMIT_PACKAGE =	Yes

SITES.fpm =	https://github.com/fortran-lang/fpm/releases/download/v${V}/

DISTFILES.fpm =	fpm-${V}.F90

EXTRACT_CASES += \
	*.F90)  install -m 0644 ${FULLDISTDIR}/$$archive ${WRKDIR};;

WANTLIB +=	c m

MODULES +=	fortran

RUN_DEPENDS +=	devel/git,-main
TEST_DEPENDS +=	devel/git,-main

SEPARATE_BUILD =	Yes

MAKE_ENV +=	FPM_FC="${MODFORTRAN_COMPILER}" \
		FPM_FFLAGS="${FFLAGS}" \
		FPM_CC="${CC}" \
		FPM_CFLAGS="${CFLAGS}" \
		FPM_CXX="${CXX}" \
		FPM_CXXFLAGS="${CXXFLAGS}" \
		FPM_LDFLAGS="${LDFLAGS}"

FC =		${MODFORTRAN_COMPILER}
FFLAGS +=

FPM_SRC0 =	${WRKSRC}/fpm-bootstrap.F90
FPM_BIN0 =	${WRKBUILD}/stage0/fpm
FPM_BIN1 =	${WRKBUILD}/stage1/fpm

post-extract:
	mv ${WRKDIR}/fpm-${V}.F90 ${FPM_SRC0}

do-build:
	mkdir -p ${WRKBUILD}/{stage0,stage1,stage2}

	# build the bootstrap (stage0)
	if [ "${FPM_SRC0}" -nt "${FPM_BIN0}" ]; then \
	cd ${WRKBUILD}/stage0 && ${SETENV} ${MAKE_ENV} \
		${FC} ${FFLAGS} -o "${FPM_BIN0}" "${FPM_SRC0}"; \
	fi

	# build fpm (stage1) using the bootstrap (stage0)
	ln -fhs ${WRKBUILD}/stage1 ${WRKSRC}/build
	cd ${WRKSRC} && ${SETENV} ${MAKE_ENV} \
		"${FPM_BIN0}" build \
			--profile release \
			--verbose

	# keep the patched fpm (stage1)
	cd ${WRKSRC} && ${SETENV} ${MAKE_ENV} \
		${FPM_BIN0} run \
			--runner "echo" \
			--profile release \
	| xargs -J % cp % ${FPM_BIN1}

	# build patched fpm (stage2) using the patched fpm (stage1)
	ln -fhs ${WRKBUILD}/stage2 ${WRKSRC}/build
	cd ${WRKSRC} && ${SETENV} ${MAKE_ENV} \
		"${FPM_BIN1}" build \
			--profile release \
			--verbose

do-install:
	cd ${WRKSRC} && ${SETENV} ${MAKE_ENV} \
		${FPM_BIN1} run \
			--runner "echo" \
			--profile release \
	| xargs -J % ${INSTALL_PROGRAM} % "${PREFIX}/bin"

do-test:
	cd ${WRKSRC} && ${SETENV} ${MAKE_ENV} \
		${FPM_BIN1} test \
			--profile release \
			--verbose

.include <bsd.port.mk>
