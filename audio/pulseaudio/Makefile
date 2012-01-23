# $OpenBSD: Makefile,v 1.17 2012/01/23 14:39:39 ajacoutot Exp $

SHARED_ONLY=		Yes

COMMENT=		cross-platform networked sound server

VERSION=		1.1
DISTNAME=		pulseaudio-${VERSION}
REVISION=		2

SHARED_LIBS +=  pulse                1.0      # .13.4
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

WANTLIB += c crypto execinfo gdbm glib-2.0 json ltdl m ossaudio
WANTLIB += pcre pthread sndfile speexdsp ssl

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

AUTOCONF_VERSION=	2.68
CONFIGURE_STYLE=	autoconf

# We only enable the strict minimum for basic volume control support.
# aucat(1) is the default sound server on OpenBSD and pulseaudio is only
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
			--enable-oss-output \
			--disable-oss-wrapper \
			--disable-x11 \
			--disable-alsa \
			--disable-asyncns \
			--disable-bluez \
			--disable-dbus \
			--disable-gtk2 \
			--disable-jack \
			--disable-hal \
			--disable-hal-compat \
			--disable-udev \
			--disable-lirc \
			--disable-samplerate \
			--disable-solaris \
			--disable-tcpwrap \
			--disable-coreaudio-output \
			--disable-waveout \
			--disable-gconf \
			--disable-avahi \
			--disable-orc \
			--localstatedir=/var
CONFIGURE_ENV=		CPPFLAGS="-I${LOCALBASE}/include" \
			LDFLAGS="-L${LOCALBASE}/lib \
				-Wl,-rpath,${TRUEPREFIX}/lib/pulse-${VERSION}/modules/" \
			PTHREAD_LIBS="-pthread"

FAKE_FLAGS=		pulseconfdir="${PREFIX}/share/examples/pulseaudio/pulse/"

pre-configure:
	${SUBST_CMD} ${WRKSRC}/src/daemon/default.pa.in \
			${WRKSRC}/src/pulse/util.c

# remove man pages for utilities we don't install
post-install:
	cd ${PREFIX} && \
		rm man/man1/pax11publish.1 \
		man/man1/start-pulseaudio-kde.1 \
		man/man1/start-pulseaudio-x11.1

.include <bsd.port.mk>
