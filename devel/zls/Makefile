COMMENT =	language server for the Zig programming language

V =		0.17.0

DIST_TUPLE +=	github zigtools zls ${V} .
DIST_TUPLE +=	github ziglibs known-folders \
		6da0d0c41b78b9ed2d34fa364fcb81b5ebece6c4 .
DIST_TUPLE +=	github ziglibs diffz \
		aac8aa99c436ab8277b0711922aad062c0167b12 .
DIST_TUPLE +=	github zigtools lsp-kit \
		3e1058db66079911fdde82f833fdce6856e0a706 .

CATEGORIES =	devel

HOMEPAGE =	https://github.com/zigtools/zls

MAINTAINER =	Daniil Ryvkin <mail@leinadr.com>

# MIT
PERMIT_PACKAGE =	Yes

WANTLIB +=	c pthread

BUILD_DEPENDS =	lang/zig

KF_HASH =	known_folders-0.0.0-Fy-PJiDLAAB98m3uYUzatrTb2mO2fpvwx2zpSroEtfbO
DIFFZ_HASH =	diffz-0.0.1-G2tlISvOAQDORzPTSxDgiKwlHuADKeJMdJrw4kRfLufj
LSP_KIT_HASH =	lsp_kit-0.1.0-bi_PL9o2DADHS1PDra3MGz1MXnsboN_ewNvrc419z7Fb

ZIG_PKGDIR =	${WRKBUILD}/zig-packages

MAKE_ENV +=	ZIG_GLOBAL_CACHE_DIR=${WRKBUILD}/zig-global-cache \
		ZIG_LOCAL_CACHE_DIR=${WRKBUILD}/zig-local-cache

ZIG_CPU =	${ARCH:S/amd64/x86_64/:S/arm64/generic/}
ZIG_FLAGS =	--system ${ZIG_PKGDIR} \
		--cache-dir ${WRKBUILD}/zig-local-cache \
		--color off \
		--verbose \
		-j${MAKE_JOBS} \
		-Dcpu=${ZIG_CPU} \
		-Doptimize=ReleaseSafe

post-extract:
	mkdir -p ${ZIG_PKGDIR}
	mv ${WRKDIR}/known-folders-6da0d0c41b78b9ed2d34fa364fcb81b5ebece6c4 \
		${ZIG_PKGDIR}/${KF_HASH}
	mv ${WRKDIR}/diffz-aac8aa99c436ab8277b0711922aad062c0167b12 \
		${ZIG_PKGDIR}/${DIFFZ_HASH}
	mv ${WRKDIR}/lsp-kit-3e1058db66079911fdde82f833fdce6856e0a706 \
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
