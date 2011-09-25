# $OpenBSD: Makefile,v 1.2 2011/09/25 09:43:36 ajacoutot Exp $

SHARED_ONLY=		Yes

COMMENT=		cross-platform networked sound server

VERSION=		0.9.23
DISTNAME=		pulseaudio-${VERSION}
SHARED_LIBS +=  pulse-browse              0.0 # 1.1
SHARED_LIBS +=  pulse-mainloop-glib       0.0 # 0.4
SHARED_LIBS +=  pulse-simple              0.0 # 0.3
SHARED_LIBS +=  pulse                     0.0 # 12.4
CATEGORIES=		audio

REVISION=		0

SUBST_VARS+=		VERSION

MAINTAINER=		Robert Nagy <robert@openbsd.org>
HOMEPAGE=		http://www.pulseaudio.org/

# LGPLv2.1
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=		http://freedesktop.org/software/pulseaudio/releases/
TAR=			${LOCALBASE}/bin/gtar

MODULES=		devel/gettext

WANTLIB += ICE ORBit-2 SM X11 X11-xcb Xext Xi Xtst avahi-client
WANTLIB += avahi-common c crypto dbus-1 execinfo ffi gconf-2 gdbm
WANTLIB += gio-2.0 glib-2.0 gmodule-2.0 gobject-2.0 gthread-2.0
WANTLIB += ltdl m ossaudio pcre pthread samplerate sndfile speexdsp
WANTLIB += ssl xcb z

USE_GMAKE=		Yes
USE_LIBTOOL=		gnu

BUILD_DEPENDS+=		archivers/gtar
LIB_DEPENDS=		audio/libsamplerate \
			audio/speex \
			databases/gdbm \
			devel/gconf2 \
			devel/libexecinfo \
			devel/libtool,-ltdl>=2.4 \
			net/avahi

AUTOCONF_VERSION=	2.68
CONFIGURE_STYLE=	autoconf gnu
CONFIGURE_ARGS+=	${CONFIGURE_SHARED} \
			--disable-atomic-arm-linux-helpers \
			--with-system-user=_pulse \
			--with-system-group=_pulse \
			--with-access-group=_pulse-access \
			--with-database=gdbm \
			--enable-x11 \
			--disable-alsa \
			--disable-jack \
			--disable-hal \
			--disable-hal-compat \
			--disable-udev \
			--disable-lirc \
			--disable-tcpwrap \
			--enable-oss-output \
			--enable-oss-wrapper \
			--localstatedir=/var
CONFIGURE_ENV=		CPPFLAGS="-I${LOCALBASE}/include" \
			LDFLAGS="-L${LOCALBASE}/lib \
				-Wl,-rpath,${TRUEPREFIX}/lib/pulse-${VERSION}/modules/" \
			PTHREAD_LIBS="-pthread"

FAKE_FLAGS+=		xdgautostartdir="${PREFIX}/share/examples/pulseaudio/xdg/autostart" \
			dbuspolicydir="${PREFIX}/share/examples/pulseaudio/dbus-1/system.d" \
			pulseconfdir="${PREFIX}/share/examples/pulseaudio/pulse/"

pre-configure:
	${SUBST_CMD} ${WRKSRC}/src/daemon/default.pa.in \
			${WRKSRC}/src/pulse/util.c

.include <bsd.port.mk>
