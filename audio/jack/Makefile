# $OpenBSD: Makefile,v 1.32 2015/05/21 11:44:00 jca Exp $

SHARED_ONLY =		Yes

COMMENT =		low latency sound server

V =			0.124.1
DISTNAME =		jack-audio-connection-kit-${V}
PKGNAME =		jack-${V}
CATEGORIES =		audio
REVISION =		1

SHARED_LIBS +=		jack		1.0	# 0.28
SHARED_LIBS +=		jackserver	1.0	# 0.28

HOMEPAGE =		http://jackaudio.org/

# LGPLv2/GPLv2
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB += c celt0>=1 db m pthread readline samplerate sndfile
WANTLIB += sndio termcap FLAC ogg vorbis vorbisenc

MASTER_SITES =		${HOMEPAGE}downloads/

LIB_DEPENDS =		audio/libsndfile \
			audio/libsamplerate \
			audio/celt>=0.11.0 \
			databases/db/v4


# uses macros from libtool.m4
BUILD_DEPENDS =		devel/libtool

LIBTOOL_FLAGS +=	--tag=disable-static

AUTOCONF_VERSION =	2.65
AUTOMAKE_VERSION =	1.10
CONFIGURE_STYLE =	autoconf automake
CONFIGURE_ARGS +=	${CONFIGURE_SHARED} \
			--with-default-tmpdir=/var/tmp \
			--disable-sun \
			--disable-portaudio \
			--disable-optimize

CONFIGURE_ENV =		CPPFLAGS="-I${LOCALBASE}/include -I${LOCALBASE}/include/db4" \
			LDFLAGS="-L${LOCALBASE}/lib" \
			HAVE_DOXYGEN="false"

.ifdef DEBUG
CONFIGURE_ARGS +=	--enable-debug
.endif

post-extract:
	mkdir -p ${WRKSRC}/drivers/sndio
	cp ${FILESDIR}/Makefile.am ${FILESDIR}/sndio_driver.{c,h} \
		${WRKSRC}/drivers/sndio

AUTO_ENV=	AUTOMAKE_VERSION=${AUTOMAKE_VERSION} \
		AUTOCONF_VERSION=${AUTOCONF_VERSION}

post-patch:
	cd ${WRKSRC}; ${AUTO_ENV} aclocal

pre-configure:
	cd ${WRKSRC}; ${AUTO_ENV} automake --add-missing --foreign

.include <bsd.port.mk>
