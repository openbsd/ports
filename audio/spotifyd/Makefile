# ring-v0.17 does not support this arch
NOT_FOR_ARCHS =		sparc64

COMMENT =		Spotify client running as UNIX daemon
# 18.02.2024 for merged patches and ring>=0.17
HEAD_COMMIT =		ff2f7a06e54bf05afd57a0243dc9f67abc15f040
DIST_TUPLE =		github	spotifyd	spotifyd	${HEAD_COMMIT}	.
WRKDIST =		${WRKDIR}/spotifyd-${HEAD_COMMIT}
DISTNAME =		spotifyd-0.3.5pl2
REVISION =		0
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

MODCARGO_CRATES_UPDATE +=	time@0.3.28
MODCARGO_CRATES +=	time		0.3.36
MODCARGO_CRATES +=	time-core	0.1.2
MODCARGO_CRATES +=	time-macros	0.2.18
MODCARGO_CRATES +=	deranged	0.3.9
MODCARGO_CRATES +=	num-conv	0.1.0
MODCARGO_CRATES +=	powerfmt	0.2.0

MODCARGO_NO_DEFAULT_FEATURES =	Yes
MODCARGO_FEATURES =	dbus_keyring \
			dbus_mpris \
			portaudio_backend

DBUS_SVC =		org.mpris.MediaPlayer2.${PKGSTEM}
DBUS_DIR =		${PREFIX}/share/dbus-1/system.d/
DOC_DIR =		${PREFIX}/doc/${PKGSTEM}
EXAMPLES_DIR =		${PREFIX}/share/examples/${PKGSTEM}
HOME_DIR =		${LOCALSTATEDIR}/${PKGSTEM}
SUBST_VARS =		DBUS_SVC \
			HOME_DIR

post-install:
	${INSTALL_DATA_DIR} ${DBUS_DIR}
	${SUBST_DATA} {${FILESDIR},${DBUS_DIR}}/${DBUS_SVC}.conf
	${INSTALL_DATA_DIR} ${DOC_DIR}
	${INSTALL_DATA} ${WRKSRC}/docs/src/config/File.md ${DOC_DIR}/
	${INSTALL_DATA_DIR} ${EXAMPLES_DIR}
	${SUBST_DATA} {${FILESDIR},${EXAMPLES_DIR}}/${PKGSTEM}.conf

.include "crates.inc"
.include <bsd.port.mk>
