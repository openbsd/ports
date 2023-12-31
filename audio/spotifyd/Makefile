# ring-v0.16.20 does not support those archs
NOT_FOR_ARCHS =         powerpc64 riscv64 sparc64

COMMENT =		Spotify client running as UNIX daemon
DIST_TUPLE =		github	Spotifyd	spotifyd	v0.3.5	.
CATEGORIES =		audio net
REVISION =		2

MAINTAINER =		Klemens Nanni <kn@openbsd.org>

HOMEPAGE =		https://spotifyd.rs

# GPLv3.0
PERMIT_PACKAGE =	Yes

WANTLIB =		${MODCARGO_WANTLIB} dbus-1 m portaudio

MODULES =		devel/cargo

BUILD_DEPENDS =		security/rust-ring

LIB_DEPENDS =		audio/portaudio-svn \
			x11/dbus,-main

CONFIGURE_STYLE =	cargo
SEPARATE_BUILD =	Yes

MODCARGO_NO_DEFAULT_FEATURES =	Yes
MODCARGO_FEATURES =	dbus_keyring \
			dbus_mpris \
			portaudio_backend

DOC_DIR =		${PREFIX}/doc/${PKGSTEM}

post-install:
	${INSTALL_DATA_DIR} ${DOC_DIR}
	${INSTALL_DATA} ${WRKSRC}/docs/src/config/File.md ${DOC_DIR}/

.include "crates.inc"
.include <bsd.port.mk>
