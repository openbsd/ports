# $OpenBSD: Makefile,v 1.18 2007/01/16 17:52:06 simon Exp $

COMMENT=	"mod_perl class for generating browsable MP3 directory lists"

MODULES=	cpan
DISTNAME=	Apache-MP3-3.05
PKGNAME=	p5-${DISTNAME}p2
CATEGORIES=	www audio

# GPL or Artistic
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

BUILD_DEPENDS=	${RUN_DEPENDS}
RUN_DEPENDS=	::www/mod_perl \
		::audio/p5-MP3-Info \
		::audio/p5-libvorbis

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/apache_mp3
	${INSTALL_DATA} ${WRKSRC}/apache_mp3/* ${PREFIX}/share/apache_mp3

.include <bsd.port.mk>
