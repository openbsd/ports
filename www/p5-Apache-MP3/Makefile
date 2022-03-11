COMMENT=	mod_perl class for generating browsable MP3 directory lists

MODULES=	cpan
PKG_ARCH=	*
DISTNAME=	Apache-MP3-4.00
CATEGORIES=	www audio

# GPL or Artistic
PERMIT_PACKAGE=	Yes

BUILD_DEPENDS=	${RUN_DEPENDS}

RUN_DEPENDS=	www/ap2-mod_perl \
		audio/p5-MP3-Info \
		audio/p5-libvorbis

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/apache_mp3
	${INSTALL_DATA} ${WRKSRC}/apache_mp3/* ${PREFIX}/share/apache_mp3

.include <bsd.port.mk>
