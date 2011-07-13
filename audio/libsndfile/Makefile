# $OpenBSD: Makefile,v 1.22 2011/07/13 22:24:05 jasper Exp $

COMMENT=	library to handle various audio file formats

DISTNAME=	libsndfile-1.0.25
CATEGORIES=	audio
HOMEPAGE=	http://www.mega-nerd.com/libsndfile/
SHARED_LIBS +=	sndfile              3.3      # .1.25

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
		--disable-sqlite
MODGNU_CONFIG_GUESS_DIRS=${WRKSRC}/Cfg
USE_GROFF =	Yes

FAKE_FLAGS=	htmldocdir=${PREFIX}/share/doc/libsndfile

.include <bsd.port.mk>
