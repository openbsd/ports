# $OpenBSD: Makefile,v 1.4 2001/09/02 17:45:54 pvalchev Exp $

COMMENT=	"mod_perl class for generating browsable MP3 directory lists"
DISTNAME=	Apache-MP3-2.19
PKGNAME=	p5-${DISTNAME}
CATEGORIES=	www audio perl5
NEED_VERSION=	1.448

MAINTAINER=	Nikolay Sturm <nikolay.sturm@desy.de>

# GPL or Artistic License ("same as Perl")
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=	${MASTER_SITE_PERL_CPAN}
MASTER_SITE_SUBDIR= Apache

PERL_MODULES=	${LOCALBASE}/libdata/perl5/site_perl

RUN_DEPENDS=	${LOCALBASE}/lib/mod_perl.so:mod_perl->=1.14:www/mod_perl \
		${PERL_MODULES}/MP3/Info.pm:p5-MP3-Info->=0.8:audio/p5-MP3-Info

CONFIGURE_STYLE= perl

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/apache_mp3
	${INSTALL_DATA} ${WRKSRC}/apache_mp3/* ${PREFIX}/share/examples/apache_mp3

.include <bsd.port.mk>
