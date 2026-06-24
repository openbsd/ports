COMMENT =	scan logs and take action, alternative to fail2ban

V =	v2.5.1
DISTNAME =	reaction-${V}
PKGNAME =	${DISTNAME:S/-v/-/}

SITES =	https://framagit.org/ppom/reaction/-/archive/${V}/

CATEGORIES =	sysutils security
HOMEPAGE =	https://reaction.ppom.me/

# AGPL-3.0
PERMIT_PACKAGE =	yes

WANTLIB += ${MODCARGO_WANTLIB} m

MODULES =		devel/cargo
CONFIGURE_STYLE =	cargo

MODCARGO_BUILD_ARGS +=	--package reaction --package reaction-plugin-virtual
MODCARGO_TEST_ARGS +=	--package reaction --package reaction-plugin-virtual

.include "crates.inc"

do-install:
	${INSTALL_PROGRAM} ${MODCARGO_TARGET_DIR}/release/reaction ${PREFIX}/bin/
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
