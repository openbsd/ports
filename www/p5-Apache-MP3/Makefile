# $OpenBSD: Makefile,v 1.24 2013/03/11 11:44:44 espie Exp $

COMMENT=	mod_perl class for generating browsable MP3 directory lists

MODULES=	cpan
DISTNAME=	Apache-MP3-3.05
REVISION=	3
CATEGORIES=	www audio
USE_GROFF =	Yes

# GPL or Artistic
PERMIT_PACKAGE_CDROM=	Yes

BUILD_DEPENDS=	${RUN_DEPENDS}
RUN_DEPENDS=	www/mod_perl \
		audio/p5-MP3-Info \
		audio/p5-libvorbis

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/apache_mp3
	${INSTALL_DATA} ${WRKSRC}/apache_mp3/* ${PREFIX}/share/apache_mp3

.include <bsd.port.mk>
