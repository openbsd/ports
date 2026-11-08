COMMENT =		Microsoft terminal text editor

GH_ACCOUNT =		microsoft
GH_PROJECT =		edit
GH_TAGNAME =		v2.0.0
PKGNAME =		msedit-${GH_TAGNAME:S/v//}
CATEGORIES =		editors

# MIT
PERMIT_PACKAGE =	Yes

WANTLIB += ${MODCARGO_WANTLIB} m

# dlopen() libicuuc.so, libicui18n.so
WANTLIB += icuuc icui18n

MODULES =		devel/cargo
CONFIGURE_STYLE =	cargo
SEPARATE_BUILD =	Yes

MODCARGO_INSTALL =	No

LIB_DEPENDS =		textproc/icu4c
MODCARGO_ENV +=		EDIT_CFG_ICU_RENAMING_AUTO_DETECT=false \
			EDIT_CFG_ICUUC_SONAME=${LOCALBASE}/lib/libicuuc.so \
			EDIT_CFG_ICUI18N_SONAME=${LOCALBASE}/lib/libicui18n.so

TEST_DEPENDS =		archivers/zstd

do-install:
	${INSTALL_PROGRAM} ${MODCARGO_TARGET_DIR}/release/edit \
		${PREFIX}/bin/msedit
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/msedit
	${INSTALL_DATA} ${WRKSRC}/LICENSE \
		${PREFIX}/share/doc/msedit/

.include "crates.inc"
.include <bsd.port.mk>
