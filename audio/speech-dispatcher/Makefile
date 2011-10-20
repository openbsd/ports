# $OpenBSD: Makefile,v 1.1.1.1 2011/10/20 11:28:27 ajacoutot Exp $

COMMENT=	common interface to speech synthesis

DISTNAME=	speech-dispatcher-0.7.1

SHARED_LIBS +=  sdaudio              0.0      # 2.4
SHARED_LIBS +=  speechd              0.0      # 5.0

CATEGORIES=	audio

HOMEPAGE=	http://devel.freebsoft.org/speechd

# GPLv2
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=	Yes

WANTLIB += ao c dotconf-1.1 espeak glib-2.0 gmodule-2.0 gthread-2.0
WANTLIB += m pcre portaudio pthread sndfile sndio stdc++

MASTER_SITES=	http://devel.freebsoft.org/pub/projects/speechd/

MODULES=	devel/gettext \
		lang/python

MODPY_ADJ_FILES=src/python/speechd_config/spd-conf \
		src/python/speechd/_test.py

LIB_DEPENDS=	audio/espeak \
		audio/libao \
		audio/libsndfile \
		devel/dotconf \
		devel/glib2

USE_LIBTOOL=	Yes

CONFIGURE_STYLE=gnu
CONFIGURE_ENV=	CPPFLAGS="-I${LOCALBASE}/include" \
		LDFLAGS="-L${LOCALBASE}/lib"
CONFIGURE_ARGS=	${CONFIGURE_SHARED} \
		--with-libao \
		--with-espeak \
		--without-flite \
		--without-ibmtts \
		--without-ivona \
		--without-nas \
		--without-oss \
		--without-alsa \
		--without-pulse


FAKE_FLAGS=	sysconfdir=${PREFIX}/share/examples/speech-dispatcher

pre-configure:
	perl -pi -e 's,-lpthread,-pthread,g' \
		${WRKSRC}/configure \
		${WRKSRC}/src/audio/Makefile.in \
		${WRKSRC}/src/server/Makefile.in \
		${WRKSRC}/src/tests/Makefile.in \
		${WRKSRC}/src/modules/Makefile.in \
		${WRKSRC}/src/c/api/Makefile.in \
		${WRKSRC}/src/c/clients/say/Makefile.in \
		${WRKSRC}/src/c/clients/spdsend/Makefile.in
	perl -pi -e 's,/usr/share,${LOCALBASE}/share,g;' \
		-e 's,/usr/bin,${LOCALBASE}/bin,g' \
		${WRKSRC}/config/modules/*.conf

.include <bsd.port.mk>
