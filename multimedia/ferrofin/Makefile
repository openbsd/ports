# aws-lc-sys has constants in .text
# https://github.com/awslabs/s2n-bignum/pull/242
.if ${MACHINE_ARCH} == "amd64" || ${MACHINE_ARCH} == "aarch64"
USE_NOEXECONLY =	Yes
.endif

COMMENT =		API compatible Jellyfin server in Rust
DIST_TUPLE =		github	mangoleaf	ferrofin	v1.3.2	.
CATEGORIES =		multimedia net

# https://github.com/jellyfin/jellyfin-web needs 'npm run build:propduction'
# which requires wxallowed WRKBUILD and fails with cryptic EPIPE on OpenBSD;
# bundle static HTML/JS files from Arch Linux's build instead:
# https://archlinux.org/packages/extra/any/jellyfin-web/
# jellyfin-web / PKGBUILD is licensed GPL-2.0-or-later / OBSD
DISTFILES.web =		jellyfin-web-12.2-1-any.pkg.tar.zst
SITES.web =		https://mirror.pkgbuild.com/extra/os/x86_64/

MAINTAINER =		Klemens Nanni <kn@openbsd.org>

# GPL-3.0
PERMIT_PACKAGE =	Yes

WANTLIB =		${MODCARGO_WANTLIB} m sqlite3 zstd

MODULES =		devel/cargo

LIB_DEPENDS =		archivers/zstd \
			databases/sqlite3

RUN_DEPENDS =		graphics/ffmpeg

CONFIGURE_STYLE =	cargo

MODCARGO_CARGOTOML =	apps/ferrofin-server/Cargo.toml
MODCARGO_INSTALL_TARGET_PATHS =	${MODCARGO_CARGOTOML:H}

DEBUG_PACKAGES =	${BUILD_PACKAGES}

CONF_FILE =		${SYSCONFDIR}/${PKGSTEM}.toml
DATA_DIR =		${VARBASE}/${PKGSTEM}
DOC_DIR =		${PREFIX}/share/doc/${PKGSTEM}
EXAMPLES_DIR =		${PREFIX}/share/examples/${PKGSTEM}
WEB_PATH =		share/jellyfin-web
WEB_DIR =		${PREFIX}/${WEB_PATH}

SUBST_VARS =		CONF_FILE \
			DATA_DIR \
			WEB_PATH

post-install:
	${INSTALL_DATA_DIR} ${DOC_DIR} ${EXAMPLES_DIR} ${WEB_DIR}
	${INSTALL_DATA} ${WRKSRC}/docs/CONFIG.md ${DOC_DIR}/
	cd ${WRKDIR}/usr/share/jellyfin/web/ && pax -rw . ${WEB_DIR}
	${SUBST_DATA} {${FILESDIR},${EXAMPLES_DIR}}/ferrofin.toml

.include "crates.inc"
.include <bsd.port.mk>
