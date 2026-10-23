COMMENT =	scan logs and take action, alternative to fail2ban

V =	v2.6.0
DISTNAME =	reaction-${V}
PKGNAME =	${DISTNAME:S/-v/-/}

SITES =	https://framagit.org/ppom/reaction/-/archive/${V}/

SITES.vendor =		https://arcfour.nl/mirror/
DISTFILES.vendor =	reaction-vendor-${V}.tgz

CATEGORIES =	sysutils security
HOMEPAGE =	https://reaction.ppom.me/

MAINTAINER =	Lydia Sobot <chilledfrogs@disroot.org>

# AGPL-3.0
PERMIT_PACKAGE =	yes

WANTLIB += ${MODCARGO_WANTLIB} m zstd

MODULES =		devel/cargo
MODCARGO_BUILD_ARGS +=	--package reaction \
			--package reaction-plugin-httpban \
			--package reaction-plugin-virtual
MODCARGO_TEST_ARGS +=	--package reaction \
			--package reaction-plugin-httpban \
			--package reaction-plugin-virtual
MODCARGO_RUSTFLAGS +=	-L${PREFIX}/lib

LIB_DEPENDS =		archivers/zstd

CONFIGURE_STYLE =	cargo

.include "crates.inc"

SUBST_VARS =	WRKSRC

post-configure:
	mv ${WRKDIR}/vendor ${WRKSRC}
	${SUBST_CMD} -m 644 -c ${FILESDIR}/vendor.toml ${WRKDIR}/vendor.toml
	cat ${WRKDIR}/vendor.toml >> ${WRKDIR}/.cargo/config.toml

do-install:
	${INSTALL_PROGRAM} ${MODCARGO_TARGET_DIR}/release/reaction ${PREFIX}/bin/
	${INSTALL_PROGRAM} ${MODCARGO_TARGET_DIR}/release/reaction-plugin-httpban \
		${PREFIX}/bin/
	${INSTALL_PROGRAM} ${MODCARGO_TARGET_DIR}/release/reaction-plugin-virtual \
		${PREFIX}/bin/
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/reaction
	${INSTALL_DATA} ${WRKSRC}/config/example.* ${PREFIX}/share/examples/reaction/
	${INSTALL_DATA} ${WRKSRC}/config/README.md ${PREFIX}/share/examples/reaction/
	${INSTALL_DATA} ${FILESDIR}/authlog.jsonnet ${PREFIX}/share/examples/reaction/
	${INSTALL_MAN} ${MODCARGO_TARGET_DIR}/release/reaction*.1 ${PREFIX}/man/man1/
	${INSTALL_DATA_DIR} \
		${PREFIX}/share/bash-completion/completions \
		${PREFIX}/share/fish/vendor_completions.d \
		${PREFIX}/share/zsh/site-functions
	${INSTALL_DATA} ${MODCARGO_TARGET_DIR}/release/reaction.bash \
		${PREFIX}/share/bash-completion/completions/reaction
	${INSTALL_DATA} ${MODCARGO_TARGET_DIR}/release/reaction.fish \
		${PREFIX}/share/fish/vendor_completions.d/reaction.fish
	${INSTALL_DATA} ${MODCARGO_TARGET_DIR}/release/_reaction \
		${PREFIX}/share/zsh/site-functions/_reaction

.include <bsd.port.mk>
