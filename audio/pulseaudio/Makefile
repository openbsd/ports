# $OpenBSD: Makefile,v 1.107 2020/04/22 09:51:25 ratchov Exp $

# XXX
# sndio: what to do with (channel) map
# sndio: check sample format
# sndio: support for recording

PORTROACH=		skipv:13.99.1

COMMENT=		cross-platform networked sound server

VERSION=		13.0
REVISION=		0
DISTNAME=		pulseaudio-${VERSION}
EXTRACT_SUFX=		.tar.xz

SHARED_LIBS +=  pulse                7.0      # .21.1
SHARED_LIBS +=  pulse-simple         1.1      # .1.1
SHARED_LIBS +=  pulse-mainloop-glib  1.1      # .0.5

CATEGORIES=		audio

SUBST_VARS+=		VERSION

HOMEPAGE=		http://www.pulseaudio.org/

MAINTAINER=		Antoine Jacoutot <ajacoutot@openbsd.org>

# LGPLv2.1
PERMIT_PACKAGE=	Yes

WANTLIB += FLAC ICE SM X11 X11-xcb Xext Xi Xtst c crypto dbus-1
WANTLIB += execinfo glib-2.0 iconv intl ltdl m ogg pthread
WANTLIB += sndfile sndio speexdsp ssl tdb vorbis vorbisenc xcb

MASTER_SITES=		https://freedesktop.org/software/pulseaudio/releases/

# C++11; no associated WANTLIB: only checked by configure but never used
COMPILER=		base-clang ports-gcc

USE_GMAKE=		Yes

# XXX undefined reference to `lt__PROGRAM__LTX_preloaded_symbols';
# XXX remove -rpath from LDFLAGS when switching back to our libtool(1)
# and remove the following patches:
# patch-libpulse-mainloop-glib_pc_in patch-libpulse-simple_pc_in patch-libpulse_pc_in
USE_LIBTOOL=		gnu

BUILD_DEPENDS=		devel/gettext,-tools

# bundled xmltoman
BUILD_DEPENDS +=	textproc/p5-XML-Parser

# needed for tests
BUILD_DEPENDS +=	devel/check
TEST_FLAGS=		HOME=${WRKDIST}

LIB_DEPENDS=		audio/libsndfile \
			audio/speexdsp \
			databases/tdb \
			devel/glib2 \
			devel/libexecinfo \
			devel/libtool,-ltdl \
			x11/dbus

# module-console-kit.so
RUN_DEPENDS +=		sysutils/consolekit

CONFIGURE_STYLE=	autoreconf

# We only enable the strict minimum for basic volume control support.
# sndiod(1) is the default sound server on OpenBSD and pulseaudio is only
# needed for a couple of use cases (volume control, media-keys)
CONFIGURE_ARGS=		--disable-atomic-arm-linux-helpers \
			--disable-default-build-tests \
			--with-system-user=_pulse \
			--with-system-group=_pulse \
			--with-access-group=_pulse-access \
			--with-bash-completion-dir=${PREFIX}/share/bash-completion/completions \
			--without-soxr \
			--without-fftw \
			--disable-oss-output \
			--disable-oss-wrapper \
			--disable-adrian-aec \
			--disable-alsa \
			--disable-asyncns \
			--disable-bluez5 \
			--disable-esound \
			--disable-gtk3 \
			--disable-jack \
			--disable-hal-compat \
			--disable-systemd-daemon \
			--disable-systemd-login \
			--disable-systemd-journal \
			--disable-udev \
			--disable-lirc \
			--disable-solaris \
			--disable-tcpwrap \
			--disable-coreaudio-output \
			--disable-waveout \
			--disable-gconf \
			--disable-avahi \
			--disable-orc \
			--disable-gsettings

.if ${MACHINE_ARCH} == "aarch64" || ${MACHINE_ARCH} == "arm"
CONFIGURE_ARGS+=	--disable-neon-opt
.endif

CONFIGURE_ENV=		CPPFLAGS="-I${X11BASE}/include -I${LOCALBASE}/include" \
			LDFLAGS="-L${LOCALBASE}/lib \
				-Wl,-rpath,${TRUEPREFIX}/lib/pulseaudio:${TRUEPREFIX}/lib/pulse-${VERSION}/modules" \
			ac_cv_prog_M4=m4

FAKE_FLAGS=		pulseconfdir="${PREFIX}/share/examples/pulseaudio/pulse" \
			sysconfdir="${PREFIX}/share/examples/pulseaudio"

### SNDIO ###
AUTOCONF_VERSION=	2.69
AUTOMAKE_VERSION=	1.15
post-extract:
	cp ${FILESDIR}/module-sndio*.{c,h} ${WRKSRC}/src/modules/

pre-configure:
	sed -i 's,/bin/bash,/usr/bin/env bash,' \
		${WRKSRC}/shell-completion/bash/pulseaudio

post-install:
	rm ${PREFIX}/lib/pulse-${VERSION}/modules/*.a
# we don't install padsp
	cd ${PREFIX} && rm man/man1/padsp.1

.include <bsd.port.mk>
