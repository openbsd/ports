# $OpenBSD: Makefile,v 1.9 2002/05/15 17:58:50 espie Exp $

COMMENT=	"mod_perl class for generating browsable MP3 directory lists"
DISTNAME=	Apache-MP3-2.22
PKGNAME=	p5-${DISTNAME}
CATEGORIES=	www audio perl5
NEED_VERSION=	1.504

MAINTAINER=	Nikolay Sturm <sturm@sec.informatik.tu-darmstadt.de>

# GPL or Artistic
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=	${MASTER_SITE_PERL_CPAN:=Apache/}

BUILD_DEPENDS=	:p5-MP3-Info-*:audio/p5-MP3-Info \
		:p5-libvorbis-*:audio/p5-libvorbis
RUN_DEPENDS=	:mod_perl-*:www/mod_perl \
		:p5-MP3-Info-*:audio/p5-MP3-Info \
		:p5-libvorbis-*:audio/p5-libvorbis

CONFIGURE_STYLE= perl

NO_REGRESS=	Yes

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/apache_mp3
	${INSTALL_DATA} ${WRKSRC}/apache_mp3/* ${PREFIX}/share/examples/apache_mp3

.include <bsd.port.mk>
