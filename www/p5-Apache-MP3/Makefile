# $OpenBSD: Makefile,v 1.1.1.1 2001/08/08 19:02:03 pvalchev Exp $

COMMENT=	"mod_perl class for generating browsable MP3 directory lists"
DISTNAME=	Apache-MP3-2.18
PKGNAME=	p5-${DISTNAME}
CATEGORIES=     www audio
NEED_VERSION=	1.433

MAINTAINER=	Nikolay Sturm <nikolay.sturm@desy.de>

# GPL or Artistic License ("same as Perl")
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=	${MASTER_SITE_PERL_CPAN}
MASTER_SITE_SUBDIR=	Apache

BUILD_DEPENDS=	${LOCALBASE}/lib/mod_perl.so::www/mod_perl
RUN_DEPENDS=	${BUILD_DEPENDS} \
		${LOCALBASE}/libdata/perl5/site_perl/MP3/Info.pm::audio/p5-MP3-Info

CONFIGURE_STYLE=	perl

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/apache_mp3
	${INSTALL_DATA} ${WRKSRC}/apache_mp3/* ${PREFIX}/share/examples/apache_mp3

.include <bsd.port.mk>
