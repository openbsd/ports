COMMENT=		C API to different audio devices

GH_ACCOUNT=		espeak-ng
GH_PROJECT=		pcaudiolib
GH_TAGNAME=		1.2

SHARED_LIBS +=	pcaudio                   0.0 # 0.1

CATEGORIES=		audio devel

# GPLv3
PERMIT_PACKAGE=		Yes

WANTLIB += FLAC Xau Xdmcp dbus-1 execinfo iconv intl m mp3lame
WANTLIB += mpg123 ogg opus pthread pulse pulse-simple sndfile
WANTLIB += vorbis vorbisenc xcb

LIB_DEPENDS=		audio/pulseaudio

AUTOCONF_VERSION=	2.69
AUTOMAKE_VERSION=	1.16
AUTORECONF=		./autogen.sh

CONFIGURE_STYLE=	autoreconf

CONFIGURE_ARGS=		--without-oss

DEBUG_PACKAGES=		${BUILD_PACKAGES}

.include <bsd.port.mk>
