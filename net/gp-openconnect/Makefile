COMMENT =		CLI GlobalProtect VPN client

V =			2.4.4
PKGNAME =		gp-openconnect-${V}

GH_ACCOUNT =		yuezk
GH_PROJECT =		GlobalProtect-openconnect
GH_TAGNAME =		v${V}

CATEGORIES =		net

# GPL-3.0
PERMIT_PACKAGE =	Yes

WANTLIB +=		${MODCARGO_WANTLIB} crypto m openconnect ssl

MODULES =		devel/cargo

BUILD_DEPENDS =		textproc/jq	\
			x11/gtk+3,-main

LIB_DEPENDS =		net/openconnect,light

USE_GMAKE =		Yes
CONFIGURE_STYLE =	cargo
PORTHOME =		${WRKBUILD}

do-build:
	@cd ${WRKSRC} && env -i ${MAKE_ENV} ${MAKE_PROGRAM} ${MAKE_FLAGS} \
		-f ${MAKE_FILE} build BUILD_GUI=0

do-install:
	${INSTALL_SCRIPT} ${WRKSRC}/target/release/gpauth ${PREFIX}/bin
	${INSTALL_SCRIPT} ${WRKSRC}/target/release/gpclient ${PREFIX}/bin

.include "crates.inc"

.include <bsd.port.mk>
