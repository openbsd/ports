# $OpenBSD: Makefile,v 1.17 2006/03/04 15:10:30 sturm Exp $

COMMENT=	"mod_perl class for generating browsable MP3 directory lists"
DISTNAME=	Apache-MP3-3.05
PKGNAME=	p5-${DISTNAME}p1
CATEGORIES=	www audio perl5

# GPL or Artistic
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=	${MASTER_SITE_PERL_CPAN:=Apache/}

BUILD_DEPENDS=	${RUN_DEPENDS}
RUN_DEPENDS=	::www/mod_perl \
		::audio/p5-MP3-Info \
		::audio/p5-libvorbis

CONFIGURE_STYLE= perl

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/apache_mp3
	${INSTALL_DATA} ${WRKSRC}/apache_mp3/* ${PREFIX}/share/apache_mp3

.include <bsd.port.mk>
