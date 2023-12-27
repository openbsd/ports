# ring-v0.16.20 does not support those archs
NOT_FOR_ARCHS =         powerpc64 riscv64 sparc64

COMMENT =		Spotify client running as UNIX daemon
DIST_TUPLE =		github	Spotifyd	spotifyd	v0.3.5	.
CATEGORIES =		audio net

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
# "dbus_keyring" breaks build:
#   error[E0433]: failed to resolve: use of undeclared crate or module `default`
#     --> ${MODCARGO_VENDOR_DIR}/modcargo-crates/keyring-2.0.1/src/lib.rs:176:54
MODCARGO_FEATURES =	dbus_mpris \
			portaudio_backend

.include "crates.inc"
.include <bsd.port.mk>
