COMMENT =		CLI GlobalProtect VPN client

V =			2.5.3
PKGNAME =		gp-openconnect-${V}
REVISION =		0

GH_ACCOUNT =		yuezk
GH_PROJECT =		GlobalProtect-openconnect
GH_TAGNAME =		v${V}

DIST_TUPLE +=		gitlab openconnect openconnect 0dcdff87db65daf692dc323732831391d595d98d ./crates/openconnect/deps/openconnect
DIST_TUPLE +=		gnome GNOME libxml2 f8a8c1f59db355b46962577e7b74f1a1e8149dc6 ./crates/openconnect/deps/libxml2

CATEGORIES =		net

# GPL-3.0
PERMIT_PACKAGE =	Yes

WANTLIB +=		${MODCARGO_WANTLIB} crypto m ssl

MODULES =		devel/cargo

AUTOCONF_VERSION= 2.69
AUTOMAKE_VERSION= 1.15

BUILD_DEPENDS =		devel/autoconf/${AUTOCONF_VERSION} \
			devel/automake/${AUTOMAKE_VERSION} \
			devel/metaauto	\
			textproc/jq	\
			x11/gtk+3,-main	\
			devel/libsoup3	\
			www/webkitgtk4	\

USE_GMAKE =		Yes
CONFIGURE_STYLE =	cargo
PORTHOME =		${WRKBUILD}

MAKE_ENV +=		AUTOCONF_VERSION=${AUTOCONF_VERSION}	\
			AUTOMAKE_VERSION=${AUTOMAKE_VERSION}

do-build:
	@cd ${WRKSRC} && env -i ${MAKE_ENV} ${MAKE_PROGRAM} ${MAKE_FLAGS} \
		-f ${MAKE_FILE} build-rs BUILD_GUI=0

do-install:
	${INSTALL_SCRIPT} ${WRKSRC}/target/release/gpauth ${PREFIX}/bin
	${INSTALL_SCRIPT} ${WRKSRC}/target/release/gpclient ${PREFIX}/bin

.include "crates.inc"

.include <bsd.port.mk>
