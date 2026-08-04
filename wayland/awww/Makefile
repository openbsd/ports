COMMENT =		animated wallpaper daemon for wayland

VERSION =		0.12.1pl20260714
DISTNAME =		awww-${VERSION}
DIST_TUPLE=		codeberg LGFae awww 25ea4fd7a42359379da9ddadedda1c477caa4ae0 .

CATEGORIES =		wayland

# GPLv3
PERMIT_PACKAGE =	Yes

WANTLIB += ${MODCARGO_WANTLIB} lz4 m

COMPILER =		base-clang ports-gcc

MODULES =		devel/cargo

WRKDIST =		${WRKDIR}/awww

BUILD_DEPENDS =		textproc/scdoc \
			wayland/wayland \
			wayland/wayland-protocols

LIB_DEPENDS =		archivers/lz4

.include "crates.inc"
CONFIGURE_STYLE =	cargo

do-install:
	cd ${WRKSRC} && ./doc/gen.sh
	${INSTALL_DATA_DIR} ${PREFIX}/bin
	${INSTALL_DATA_DIR} ${PREFIX}/man/man1
	${INSTALL} ${WRKSRC}/target/release/{awww,awww-daemon} \
		${PREFIX}/bin
	${INSTALL_DATA} ${WRKSRC}/doc/generated/* \
		${PREFIX}/man/man1/
	${INSTALL_DATA_DIR} ${PREFIX}/share/fish/vendor_completions.d/
	${INSTALL_DATA} ${WRKSRC}/completions/awww.fish \
		${PREFIX}/share/fish/vendor_completions.d/
	${INSTALL_DATA_DIR} ${PREFIX}/share/zsh/site-functions/
	${INSTALL_DATA} ${WRKSRC}/completions/_awww \
		${PREFIX}/share/zsh/site-functions/
	${INSTALL_DATA_DIR} ${PREFIX}/share/bash-completion/completions/
	${INSTALL_DATA} ${WRKSRC}/completions/awww.bash \
		${PREFIX}/share/bash-completion/completions/awww

.include <bsd.port.mk>

