# $OpenBSD: Makefile,v 1.54 2013/10/17 07:53:10 ajacoutot Exp $

# XXX
# util.c: implement pa_get_binary_name()
# sndio: what to do with (channel) map
# sndio: check sample format
# sndio: support for recording

# hppa/mips64 don't have native atomic operations.
# PA can use/detect libatomic_ops as a fallback
# but in that case linking fails.
BROKEN-hppa =	lack of atomic ops
BROKEN-mips64 =	lack of atomic ops

SHARED_ONLY=		Yes

COMMENT=		cross-platform networked sound server

VERSION=		4.0
DISTNAME=		pulseaudio-${VERSION}
EXTRACT_SUFX=		.tar.xz
REVISION=		0

SHARED_LIBS +=  pulse                2.1      # .16.2
SHARED_LIBS +=  pulse-simple         0.0      # .0.4
SHARED_LIBS +=  pulse-mainloop-glib  0.0      # .0.4

CATEGORIES=		audio

SUBST_VARS+=		VERSION

MAINTAINER=		Robert Nagy <robert@openbsd.org>
HOMEPAGE=		http://www.pulseaudio.org/

# LGPLv2.1
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += FLAC ICE SM X11 X11-xcb Xext Xi Xtst c crypto dbus-1
WANTLIB += execinfo gdbm glib-2.0 json-c ltdl m ogg pcre pthread
WANTLIB += sndfile sndio speexdsp ssl vorbis vorbisenc xcb

MASTER_SITES=		http://freedesktop.org/software/pulseaudio/releases/

MODULES=		devel/gettext \
			textproc/intltool

USE_GMAKE=		Yes
# undefined reference to `lt__PROGRAM__LTX_preloaded_symbols'
USE_LIBTOOL=		gnu
LIBTOOL_FLAGS=		--tag=disable-static

# needed for tests
BUILD_DEPENDS +=	devel/check
TEST_FLAGS=		HOME=${WRKDIST}

LIB_DEPENDS=		audio/libsndfile \
			audio/speex \
			databases/gdbm \
			devel/glib2 \
			devel/json-c \
			devel/libexecinfo \
			devel/libtool,-ltdl \
			x11/dbus

# module-console-kit.so
RUN_DEPENDS +=		sysutils/consolekit

CONFIGURE_STYLE=	gnu

# We only enable the strict minimum for basic volume control support.
# sndiod(1) is the default sound server on OpenBSD and pulseaudio is only
# needed for a couple of use cases (volume control, media-keys)
CONFIGURE_ARGS=		${CONFIGURE_SHARED} \
			--disable-static \
			--disable-atomic-arm-linux-helpers \
			--disable-default-build-tests \
			--with-system-user=_pulse \
			--with-system-group=_pulse \
			--with-access-group=_pulse-access \
			--with-database=gdbm \
			--without-fftw \
			--disable-oss-output \
			--disable-oss-wrapper \
			--disable-adrian-aec \
			--disable-alsa \
			--disable-asyncns \
			--disable-bluez \
			--disable-esound \
			--disable-gtk3 \
			--disable-jack \
			--disable-hal-compat \
			--disable-systemd \
			--disable-udev \
			--disable-lirc \
			--disable-samplerate \
			--disable-solaris \
			--disable-tcpwrap \
			--disable-coreaudio-output \
			--disable-waveout \
			--disable-gconf \
			--disable-avahi \
			--disable-orc
# linked "privately" to lib/pulseaudio/libpulsecommon-X.Y.so
CONFIGURE_ENV=		CPPFLAGS="-I${LOCALBASE}/include" \
			LDFLAGS="-L${LOCALBASE}/lib \
				-Wl,-rpath,${TRUEPREFIX}/lib/pulseaudio:${TRUEPREFIX}/lib/pulse-${VERSION}/modules" \
			ac_cv_prog_M4=m4

FAKE_FLAGS=		pulseconfdir="${PREFIX}/share/examples/pulseaudio/pulse" \
			sysconfdir="${PREFIX}/share/examples/pulseaudio"

### SNDIO ###
AUTOCONF_VERSION=	2.69
AUTOMAKE_VERSION=	1.12
BUILD_DEPENDS +=	${MODGNU_AUTOMAKE_DEPENDS} \
			${MODGNU_AUTOCONF_DEPENDS}
BUILD_DEPENDS +=	devel/libtool # needs needs libtoolize

post-extract:
	cp ${FILESDIR}/module-sndio*.{c,h} ${WRKSRC}/src/modules/

pre-configure:
	cd ${WRKSRC} && \
		AUTOCONF_VERSION=${AUTOCONF_VERSION} \
		AUTOMAKE_VERSION=${AUTOMAKE_VERSION} \
		autoreconf -i
### END SNDIO ###
	${SUBST_CMD} ${WRKSRC}/src/daemon/default.pa.in

# remove man pages for utilities we don't install
post-install:
	cd ${PREFIX} && \
		rm man/man1/pax11publish.1 \
			man/man1/padsp.1 \
			man/man1/start-pulseaudio-kde.1 \
			man/man1/start-pulseaudio-x11.1

.include <bsd.port.mk>
