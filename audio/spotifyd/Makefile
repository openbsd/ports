# ring-v0.17 does not support this arch
NOT_FOR_ARCHS =		sparc64

COMMENT =		Spotify client running as UNIX daemon
# 06.01.2024 for merged patches and ring>=0.17
HEAD_COMMIT =		059f5f3356a4e5e0fe4e623ea45485dd588a7aed
DIST_TUPLE =		github	spotifyd	spotifyd	${HEAD_COMMIT}	.
WRKDIST =		${WRKDIR}/spotifyd-${HEAD_COMMIT}
DISTNAME =		spotifyd-0.3.5pl1
CATEGORIES =		audio net

MAINTAINER =		Klemens Nanni <kn@openbsd.org>

HOMEPAGE =		https://spotifyd.rs

# GPLv3.0
PERMIT_PACKAGE =	Yes

# uses pledge()
WANTLIB =		${MODCARGO_WANTLIB} dbus-1 m portaudio

MODULES =		devel/cargo

LIB_DEPENDS =		audio/portaudio-svn \
			x11/dbus,-main

CONFIGURE_STYLE =	cargo
SEPARATE_BUILD =	Yes

MODCARGO_NO_DEFAULT_FEATURES =	Yes
MODCARGO_FEATURES =	dbus_keyring \
			dbus_mpris \
			portaudio_backend

DOC_DIR =		${PREFIX}/doc/${PKGSTEM}
EXAMPLES_DIR =		${PREFIX}/share/examples/${PKGSTEM}
HOME_DIR =		${LOCALSTATEDIR}/${PKGSTEM}
SUBST_VARS =		HOME_DIR

post-install:
	${INSTALL_DATA_DIR} ${DOC_DIR}
	${INSTALL_DATA} ${WRKSRC}/docs/src/config/File.md ${DOC_DIR}/
	${INSTALL_DATA_DIR} ${EXAMPLES_DIR}
	${SUBST_DATA} {${FILESDIR},${EXAMPLES_DIR}}/${PKGSTEM}.conf

.include "crates.inc"
.include <bsd.port.mk>
