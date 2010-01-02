# $OpenBSD: Makefile,v 1.18 2010/01/02 17:53:27 naddy Exp $

COMMENT=	library to handle various audio file formats

DISTNAME=	libsndfile-1.0.21
CATEGORIES=	audio
HOMEPAGE=	http://www.mega-nerd.com/libsndfile/
SHARED_LIBS +=	sndfile              3.2      # .1.21

# LGPLv2.1
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=	${HOMEPAGE}files/

WANTLIB=	c m sndio

USE_LIBTOOL=	Yes
CONFIGURE_STYLE=gnu
CONFIGURE_ARGS=	${CONFIGURE_SHARED} \
		--disable-alsa \
		--disable-external-libs \
		--disable-octave \
		--disable-sqlite \
		--disable-shave
CONFIGURE_ENV=	CPPFLAGS="-DUSE_SNDIO"
MODGNU_CONFIG_GUESS_DIRS=${WRKSRC}/Cfg

FAKE_FLAGS=	htmldocdir=${PREFIX}/share/doc/libsndfile

.include <bsd.port.mk>
