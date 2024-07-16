COMMENT =	modal text editor

VER =		24.07
DISTNAME =	helix-${VER}

CATEGORIES =	editors

HOMEPAGE =	https://helix-editor.com

MAINTAINER =	Laurent Cheylus <foxy@free.fr>

# MPL-2.0
PERMIT_PACKAGE =	Yes

WANTLIB +=	${MODCARGO_WANTLIB} ${COMPILER_LIBCXX} m

SITES =		https://github.com/helix-editor/helix/releases/download/${VER}/

EXTRACT_SUFX =	.tar.xz
DISTFILES +=	${DISTNAME}-source${EXTRACT_SUFX}

# avoid WRKDIST = ${WRKDIR}
EXTRACT_CASES= *.tar.xz) \
	xz -dc ${FULLDISTDIR}/$$archive | ${TAR} xf - -C ${WRKDIST};;

COMPILER =	base-clang ports-gcc

MODULES =	devel/cargo

CONFIGURE_STYLE =       cargo
SEPARATE_BUILD =        Yes

pre-extract:
	@mkdir -p ${WRKDIST}

post-patch:
	grep -F -Rls '%%DATADIR%%' ${WRKSRC} | xargs sed -i \
		's,%%DATADIR%%,${PREFIX}/share/helix,'

do-install:
	${INSTALL_PROGRAM} ${MODCARGO_TARGET_DIR}/release/hx ${PREFIX}/bin/

	${INSTALL_DATA_DIR} ${PREFIX}/share/helix/runtime/themes
	${INSTALL_DATA_DIR} ${PREFIX}/share/helix/runtime/themes/licenses
	${INSTALL_DATA} ${WRKSRC}/runtime/themes/*.{toml,md} \
		${PREFIX}/share/helix/runtime/themes
	${INSTALL_DATA} ${WRKSRC}/runtime/themes/licenses/* \
		${PREFIX}/share/helix/runtime/themes/licenses

	${INSTALL_DATA_DIR} ${PREFIX}/share/helix/runtime/queries
	find ${WRKSRC}/runtime/queries/ -type d -exec \
		cp -a {} ${PREFIX}/share/helix/runtime/queries \;

	${INSTALL_DATA_DIR} ${PREFIX}/share/helix/runtime/grammars
	find ${WRKSRC}/runtime/grammars/ -type f -name '*.so' -exec \
		cp -a {} ${PREFIX}/share/helix/runtime/grammars \;

	${INSTALL_DATA} ${WRKSRC}/runtime/tutor ${PREFIX}/share/helix/runtime
	${INSTALL_DATA} ${WRKSRC}/languages.toml ${PREFIX}/share/helix

.include "crates.inc"

.include <bsd.port.mk>
