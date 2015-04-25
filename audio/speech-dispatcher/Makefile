# $OpenBSD: Makefile,v 1.15 2015/04/25 19:33:20 jasper Exp $

COMMENT=	common interface to speech synthesis

DISTNAME=	speech-dispatcher-0.8.2
REVISION=	0

SHARED_LIBS +=  speechd              2.0      # .7.0

CATEGORIES=	audio

HOMEPAGE=	http://devel.freebsoft.org/speechd

# GPLv2
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += FLAC ao c dotconf espeak glib-2.0 gmodule-2.0 gthread-2.0
WANTLIB += ltdl m ogg pcre pthread sndfile vorbis vorbisenc

MASTER_SITES=	http://devel.freebsoft.org/pub/projects/speechd/

MODULES=	devel/gettext \
		textproc/intltool \
		lang/python

MODPY_VERSION=	${MODPY_DEFAULT_VERSION_3}
MODPY_ADJ_FILES=src/api/python/speechd_config/spd-conf \
		src/api/python/speechd/_test.py

# used by spd-conf
RUN_DEPENDS=	devel/py-xdg${MODPY_FLAVOR}

LIB_DEPENDS=	audio/espeak>=1.47.03p0 \
		audio/libao \
		audio/libsndfile \
		devel/dotconf>=1.3 \
		devel/glib2 \
		devel/libtool,-ltdl

# undefined reference to `lt__PROGRAM__LTX_preloaded_symbols'
USE_LIBTOOL=	gnu

USE_GMAKE=	Yes

CONFIGURE_STYLE=gnu
CONFIGURE_ENV=	CPPFLAGS="-I${LOCALBASE}/include" \
		LDFLAGS="-L${LOCALBASE}/lib"
CONFIGURE_ARGS=	${CONFIGURE_SHARED} \
		--without-pulse


FAKE_FLAGS=	sysconfdir=${PREFIX}/share/examples/speech-dispatcher

pre-configure:
	perl -pi -e 's,/usr/share,${LOCALBASE}/share,g;' \
		-e 's,/usr/bin,${LOCALBASE}/bin,g' \
		${WRKSRC}/config/modules/*.conf

post-install:
	rm ${PREFIX}/lib/speech-dispatcher/spd_libao.{a,la}

.include <bsd.port.mk>
