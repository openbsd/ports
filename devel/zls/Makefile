COMMENT =	language server for the Zig programming language

V =		0.16.0

DIST_TUPLE +=	github zigtools zls ${V} .
DIST_TUPLE +=	github ziglibs known-folders \
		d6d03830968cca6b7b9f24fd97ee348346a6905d .
DIST_TUPLE +=	github ziglibs diffz \
		b39fe07e7fdbcf56e43ba2890b9f484f16969f90 .
DIST_TUPLE +=	github zigtools lsp-kit \
		b886a2b0d5cee85ecbcc3089b863f7517cc9ff7f .

CATEGORIES =	devel

HOMEPAGE =	https://github.com/zigtools/zls

MAINTAINER =	Daniil Ryvkin <mail@leinadr.com>

# MIT
PERMIT_PACKAGE =	Yes

WANTLIB +=	c pthread

BUILD_DEPENDS =	lang/zig

KF_HASH =	known_folders-0.0.0-Fy-PJk3KAACzUg2us_0JvQQmod1ZA8jBt7MuoKCihq88
DIFFZ_HASH =	diffz-0.0.1-G2tlISzNAQCldmOcINavGmF1zdt20NFPXeM8d07jp_68
LSP_KIT_HASH =	lsp_kit-0.1.0-bi_PL3IyDACfp1xdTnkiOHEok2YpPCCCJHuuOcNzjl1D

ZIG_PKGDIR =	${WRKBUILD}/zig-packages

MAKE_ENV +=	ZIG_GLOBAL_CACHE_DIR=${WRKBUILD}/zig-global-cache \
		ZIG_LOCAL_CACHE_DIR=${WRKBUILD}/zig-local-cache

ZIG_CPU =	${ARCH:S/amd64/x86_64/:S/arm64/generic/}
ZIG_FLAGS =	--system ${ZIG_PKGDIR} \
		--global-cache-dir ${WRKBUILD}/zig-global-cache \
		--cache-dir ${WRKBUILD}/zig-local-cache \
		--color off \
		--verbose \
		-j${MAKE_JOBS} \
		-Dcpu=${ZIG_CPU} \
		-Doptimize=ReleaseSafe

post-extract:
	mkdir -p ${ZIG_PKGDIR}
	mv ${WRKDIR}/known-folders-d6d03830968cca6b7b9f24fd97ee348346a6905d \
		${ZIG_PKGDIR}/${KF_HASH}
	mv ${WRKDIR}/diffz-b39fe07e7fdbcf56e43ba2890b9f484f16969f90 \
		${ZIG_PKGDIR}/${DIFFZ_HASH}
	mv ${WRKDIR}/lsp-kit-b886a2b0d5cee85ecbcc3089b863f7517cc9ff7f \
		${ZIG_PKGDIR}/${LSP_KIT_HASH}

do-build:
	cd ${WRKSRC} && ulimit -s 16384 && exec ${SETENV} ${MAKE_ENV} \
		zig build ${ZIG_FLAGS} --prefix ${WRKBUILD}/stage

do-install:
	cd ${WRKSRC} && ${SETENV} ${MAKE_ENV} \
		zig build install ${ZIG_FLAGS} --prefix ${PREFIX}

do-test:
	cd ${WRKSRC} && ulimit -s 16384 && exec ${SETENV} ${MAKE_ENV} \
		zig build test ${ZIG_FLAGS}

.include <bsd.port.mk>
