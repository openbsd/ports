COMMENT =		Spotify client running as UNIX daemon
GH_ACCOUNT =		Spotifyd
GH_PROJECT =		spotifyd
GH_TAGNAME =		v0.4.2
CATEGORIES =		audio net

MAINTAINER =		Pascal Stumpf <pascal@stumpf.co>

HOMEPAGE =		https://spotifyd.rs

# GPLv3.0
PERMIT_PACKAGE =	Yes

# C1x
COMPILER =		base-clang ports-gcc

# uses pledge()
WANTLIB =		${MODCARGO_WANTLIB} crypto dbus-1 m portaudio ssl

MODULES =		devel/cargo \
			lang/clang

BUILD_DEPENDS =		devel/cmake/core
LIB_DEPENDS =		audio/portaudio-svn \
			x11/dbus,-main

# libclang needed for bindgen used from aws-lc-sys
MAKE_ENV =		LIBCLANG_PATH=${LOCALBASE}/llvm${MODCLANG_VERSION}/lib
MODCLANG_COMPILER_LINKS = no

CONFIGURE_STYLE =	cargo
SEPARATE_BUILD =	Yes

MODCARGO_NO_DEFAULT_FEATURES =	Yes
MODCARGO_FEATURES =	dbus_mpris \
			portaudio_backend

DBUS_SVC =		org.mpris.MediaPlayer2.${PKGSTEM}
DBUS_DIR =		${PREFIX}/share/dbus-1/system.d/
EXAMPLES_DIR =		${PREFIX}/share/examples/${PKGSTEM}
HOME_DIR =		${LOCALSTATEDIR}/${PKGSTEM}
SUBST_VARS =		DBUS_SVC \
			HOME_DIR

post-install:
	${INSTALL_DATA_DIR} ${DBUS_DIR}
	${SUBST_DATA} {${FILESDIR},${DBUS_DIR}}/${DBUS_SVC}.conf
	${INSTALL_DATA_DIR} ${EXAMPLES_DIR}
	${SUBST_DATA} {${FILESDIR},${EXAMPLES_DIR}}/${PKGSTEM}.conf

.include "crates.inc"
.include <bsd.port.mk>
