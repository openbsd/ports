COMMENT=	HTML validator, formatter and language server

CATEGORIES =	www devel

VERSION =		0.6.2pl20260504
COMMIT =		39dc8b3681f14f28fe29ceeadae1fbea54715689
# Look for these in ${WRKSRC}/build.zig.zon
TRACY_COMMIT =		67d2d89e351048c76fc6d161e0ac09d8a831dc60
SCRIPTY_COMMIT =	9c1e5903acd2a591f87f577b2ea08895e7168b9d
KNOWN_FOLDERS_COMMIT =	175f5596b3d2ee3c658282bb07885580895a0e73
LSP_KIT_COMMIT =	ec325a3c33d1da7708cf513355208f74d9560580
REVISION =		0

DIST_TUPLE =	github kristoff-it superhtml ${COMMIT} . \
		github kristoff-it tracy ${TRACY_COMMIT} tracy \
		github kristoff-it scripty ${SCRIPTY_COMMIT} scripty \
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
