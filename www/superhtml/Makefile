COMMENT=	HTML validator, formatter and language server

CATEGORIES =	www devel

VERSION =		0.7.1
# Look for these in ${WRKSRC}/build.zig.zon
TRACY_COMMIT =		67d2d89e351048c76fc6d161e0ac09d8a831dc60
SCRIPTY_COMMIT =	48006feaa0d75fd3548ae222d47c0ee9bf9f0a7a
KNOWN_FOLDERS_COMMIT =	207c34a16e4365edc20d92c7892f962b3bed46e8
LSP_KIT_COMMIT =	3e1058db66079911fdde82f833fdce6856e0a706
AFL_KIT_COMMIT =	e9b5dfc14c06133786a09214709316dc9fb54bd9

DIST_TUPLE =	github kristoff-it superhtml v${VERSION} . \
		github kristoff-it tracy ${TRACY_COMMIT} tracy \
		github kristoff-it scripty ${SCRIPTY_COMMIT} scripty \
		github kristoff-it zig-afl-kit ${AFL_KIT_COMMIT} zig-afl-kit \
		github ziglibs known-folders ${KNOWN_FOLDERS_COMMIT} known_folders \
		github zigtools lsp-kit ${LSP_KIT_COMMIT} lsp_kit

PKGNAME =	superhtml-${VERSION}

MAINTAINER =	Volker Schlecht <volker@openbsd.org>

# MIT
PERMIT_PACKAGE =	Yes

WANTLIB += c

BUILD_DEPENDS =		lang/zig

ZIG_CPU =		${ARCH:S/amd64/x86_64/:S/arm64/generic/}
ZIG_ARGS =		-p ${WRKSRC}/zig-out \
			-j${MAKE_JOBS} \
			-Dcpu=${ZIG_CPU} \
			-Doptimize=ReleaseSafe \
			--color off \
			--verbose \
			--fork=tracy \
			--fork=scripty \
			--fork=known_folders \
			--fork=lsp_kit

MAKE_ENV +=		ZIG_GLOBAL_CACHE_DIR=${WRKSRC}/.cache

NO_TEST =		Yes

do-build:
	cd ${WRKSRC} && \
	exec ${SETENV} ${MAKE_ENV} \
	zig build ${ZIG_ARGS}

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/zig-out/bin/superhtml ${PREFIX}/bin/

.include <bsd.port.mk>
