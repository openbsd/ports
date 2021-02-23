# $OpenBSD: Makefile,v 1.33 2021/02/23 19:39:10 sthen Exp $

COMMENT=	common interface to speech synthesis

V=		0.10.2
DISTNAME=	speech-dispatcher-${V}

SHARED_LIBS +=  speechd              2.2      # .10.2

CATEGORIES=	audio

HOMEPAGE=	http://devel.freebsoft.org/speechd

# GPLv2
PERMIT_PACKAGE=	Yes

WANTLIB += ${COMPILER_LIBCXX} FLAC ao c dotconf espeak glib-2.0
WANTLIB += gmodule-2.0 gthread-2.0 iconv intl ltdl m ogg sndfile
WANTLIB += vorbis vorbisenc

MASTER_SITES=	https://github.com/brailcom/speechd/releases/download/${V}/

MODULES=	textproc/intltool \
		lang/python

MODPY_ADJ_FILES=src/api/python/speechd_config/spd-conf \
		src/api/python/speechd/_test.py

# used by spd-conf
RUN_DEPENDS=	devel/py-xdg${MODPY_FLAVOR}

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
		--without-flite

FAKE_FLAGS=	sysconfdir=${PREFIX}/share/examples/speech-dispatcher

pre-configure:
	sed -i -e 's,/usr/share,${LOCALBASE}/share,g;' \
		-e 's,/usr/bin,${LOCALBASE}/bin,g' \
		${WRKSRC}/config/modules/*.conf

post-install:
	rm ${PREFIX}/lib/speech-dispatcher/spd_libao.{a,la}

.include <bsd.port.mk>
