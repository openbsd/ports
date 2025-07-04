COMMENT=	common interface to speech synthesis

V=		0.12.1
DISTNAME=	speech-dispatcher-${V}

SHARED_LIBS +=  speechd_module       0.0      # .0.0
SHARED_LIBS +=  speechd              2.3      # .8.0

CATEGORIES=	audio

HOMEPAGE=	http://devel.freebsoft.org/speechd

# GPLv2
PERMIT_PACKAGE=	Yes

WANTLIB += ao c dotconf espeak-ng glib-2.0 gmodule-2.0 gthread-2.0
WANTLIB += iconv intl ltdl m ogg pcaudio pthread pulse pulse-simple
WANTLIB += sndfile vorbis

SITES=		https://github.com/brailcom/speechd/releases/download/${V}/

MODULES=	textproc/intltool \
		lang/python

MODPY_ADJ_FILES=src/api/python/speechd_config/spd-conf \
		src/api/python/speechd/_test.py

# used by spd-conf
RUN_DEPENDS=	devel/py-xdg

LIB_DEPENDS=	audio/espeak \
		audio/libao \
		audio/libsndfile \
		devel/dotconf \
		devel/glib2 \
		devel/libtool,-ltdl

# undefined reference to `lt__PROGRAM__LTX_preloaded_symbols'
USE_LIBTOOL=	gnu

USE_GMAKE=	Yes

CONFIGURE_STYLE=gnu

CONFIGURE_ENV=	CPPFLAGS="-I${LOCALBASE}/include" \
		LDFLAGS="-L${LOCALBASE}/lib"

# XXX doesn't build when help2man is installed
CONFIGURE_ENV +=	ac_cv_prog_HELP2MAN=

CONFIGURE_ARGS=	--without-pulse \
		--without-flite \
		--without-kali \
		--without-baratinoo \
		--without-ibmtts \
		--without-voxin

# XXX pipewire produces no sound yet (no sndio(7) support)
CONFIGURE_ARGS +=	--without-pipewire

FAKE_FLAGS=	sysconfdir=${PREFIX}/share/examples/speech-dispatcher

# XXX speech-dispatcher.texi:3023:
# Next field of node `The Skeleton of a Bare Output Module' not pointed to
# (perhaps incorrect sectioning?).
BUILD_DEPENDS +=	print/texinfo
CONFIGURE_ENV +=	MAKEINFO="${LOCALBASE}/bin/gmakeinfo"

DEBUG_PACKAGES=		${BUILD_PACKAGES}

pre-configure:
	sed -i -e 's,/usr/share,${LOCALBASE}/share,g;' \
		-e 's,/usr/bin,${LOCALBASE}/bin,g' \
		${WRKSRC}/config/modules/*.conf

post-install:
	rm ${PREFIX}/lib/speech-dispatcher/*.{a,la}

.include <bsd.port.mk>
