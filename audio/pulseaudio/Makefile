COMMENT=		PulseAudio client libraries and utilities

VERSION=		17.0
DISTNAME=		pulseaudio-${VERSION}
EXTRACT_SUFX=		.tar.xz
REVISION=		5

SHARED_LIBS += pulse                     7.2 # 0.24.3
SHARED_LIBS += pulse-simple              1.2 # 0.1.1
SHARED_LIBS += pulse-mainloop-glib       1.2 # 0.0.6

CATEGORIES=		audio

SUBST_VARS+=		VERSION

HOMEPAGE=		http://www.pulseaudio.org/

MAINTAINER=		Antoine Jacoutot <ajacoutot@openbsd.org>

# LGPLv2.1
PERMIT_PACKAGE=	Yes

WANTLIB += c dbus-1 execinfo glib-2.0 iconv intl m pthread sndfile
WANTLIB += xcb

SITES=			https://freedesktop.org/software/pulseaudio/releases/

MODULES=		devel/meson

# C++11; no associated WANTLIB: only checked by configure but never used
COMPILER=		base-clang ports-gcc

BUILD_DEPENDS=		devel/gettext,-tools \
			shells/bash-completion

# bundled xmltoman
BUILD_DEPENDS +=	textproc/p5-XML-Parser

# needed for tests
BUILD_DEPENDS +=	devel/check
TEST_FLAGS=		HOME=${WRKDIST}

# speex is a requirement for echo canceller (needs at least one)
LIB_DEPENDS=		audio/libsndfile \
			devel/glib2 \
			x11/dbus

# ERROR: C shared or static library 'intl' not found
CONFIGURE_ENV +=	CPPFLAGS="-I${LOCALBASE}/include" \
			LDFLAGS="-L${LOCALBASE}/lib"

CONFIGURE_ARGS=		-Ddaemon=false \
			-Ddoxygen=false \
			-Dtests=false \
			-Dsystem_user=_pulse \
			-Dsystem_group=_pulse \
			-Daccess_group=_pulse-access \
			-Ddatabase=tdb \
			-Datomic-arm-linux-helpers=false \
			-Dalsa=disabled \
			-Dasyncns=disabled \
			-Davahi=disabled \
			-Dbluez5=disabled \
			-Delogind=disabled \
			-Dfftw=disabled \
			-Dbluez5-gstreamer=disabled \
			-Dgtk=disabled \
			-Dhal-compat=false \
			-Djack=disabled \
			-Dlirc=disabled \
			-Dorc=disabled \
			-Doss-output=disabled \
			-Dsamplerate=disabled \
			-Dsoxr=disabled \
			-Dsystemd=disabled \
			-Dtcpwrap=disabled \
			-Dudev=disabled \
			-Dvalgrind=disabled \
			-Dadrian-aec=false \
			-Dwebrtc-aec=disabled

# Forget per-stream routing settings that have been set before version 14.0.
# Recommended when using GNOME.
# See https://gitlab.freedesktop.org/pulseaudio/pulseaudio/-/issues/832'
CONFIGURE_ARGS +=	-Dstream-restore-clear-old-devices=false

DEBUG_PACKAGES=		${BUILD_PACKAGES}

.include <bsd.port.arch.mk>
pre-configure:
	sed -i 's,/bin/bash,/usr/bin/env bash,' \
		${WRKSRC}/shell-completion/bash/pactl
.if !${PROPERTIES:Mclang}
	sed -i "/libintl_dep = \[\]/ s/\[\]/cc.find_library('intl')/" \
		${WRKSRC}/meson.build
.endif

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/pulseaudio
	mv ${WRKINST}${SYSCONFDIR}/pulse ${PREFIX}/share/examples/pulseaudio
# remove this linux-centric bash script
	rm ${PREFIX}/bin/pa-info

.include <bsd.port.mk>
