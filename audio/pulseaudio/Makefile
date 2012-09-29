# $OpenBSD: Makefile,v 1.25 2012/09/29 09:32:05 ajacoutot Exp $

# XXX
# fix autospawn lock (patch-src_daemon_main_c)
# sndio: what to do with (channel) map
# sndio: check sample format
# sndio: support for recording
# sndio: make module-detect properly detects the sndio module
# sndio: implement hardware mixer

SHARED_ONLY=		Yes

COMMENT=		cross-platform networked sound server

VERSION=		2.0
DISTNAME=		pulseaudio-${VERSION}
REVISION=		3

SHARED_LIBS +=  pulse                1.1      # .14.2
SHARED_LIBS +=  pulse-simple         0.0      # .0.3
SHARED_LIBS +=  pulse-mainloop-glib  0.0      # .0.4

CATEGORIES=		audio

SUBST_VARS+=		VERSION

MAINTAINER=		Robert Nagy <robert@openbsd.org>
HOMEPAGE=		http://www.pulseaudio.org/

# LGPLv2.1
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

WANTLIB += c crypto execinfo gdbm glib-2.0 json ltdl m
WANTLIB += pcre pthread sndfile sndio speexdsp ssl stdc++

MASTER_SITES=		http://freedesktop.org/software/pulseaudio/releases/
TAR=			${LOCALBASE}/bin/gtar

MODULES=		devel/gettext \
			textproc/intltool

USE_GMAKE=		Yes
# undefined reference to `lt__PROGRAM__LTX_preloaded_symbols'
USE_LIBTOOL=		gnu
LIBTOOL_FLAGS=		--tag=disable-static

BUILD_DEPENDS=		archivers/gtar
LIB_DEPENDS=		audio/speex \
			databases/gdbm \
			devel/libexecinfo \
			devel/libtool,-ltdl>=2.4 \
			devel/json-c \
			devel/glib2 \
			audio/libsndfile

AUTOCONF_VERSION=	2.69
CONFIGURE_STYLE=	autoconf

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
			--without-caps \
			--disable-oss-output \
			--disable-oss-wrapper \
			--disable-x11 \
			--disable-adrian-aec \
			--disable-alsa \
			--disable-asyncns \
			--disable-bluez \
			--disable-dbus \
			--disable-esound \
			--disable-gtk2 \
			--disable-jack \
			--disable-hal \
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
CONFIGURE_ENV=		CPPFLAGS="-I${LOCALBASE}/include" \
			LDFLAGS="-L${LOCALBASE}/lib \
				-Wl,-rpath,${TRUEPREFIX}/lib/pulse-${VERSION}/modules/"

FAKE_FLAGS=		pulseconfdir="${PREFIX}/share/examples/pulseaudio/pulse/"

### SNDIO ###
CONFIGURE_STYLE=	gnu
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
	${SUBST_CMD} ${WRKSRC}/src/daemon/default.pa.in \
			${WRKSRC}/src/pulse/util.c

# remove man pages for utilities we don't install
post-install:
	cd ${PREFIX} && \
		rm man/man1/pax11publish.1 \
			man/man1/padsp.1 \
			man/man1/start-pulseaudio-kde.1 \
			man/man1/start-pulseaudio-x11.1

.include <bsd.port.mk>
