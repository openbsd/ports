# $OpenBSD: Makefile,v 1.4 2004/07/04 23:42:59 mjc Exp $

NOT_FOR_ARCHS=	${NO_SHARED_ARCHS}

COMMENT=	"Generic Apache Request Library"

DISTNAME=	libapreq-1.3
PKGNAME=	p5-${DISTNAME}
CATEGORIES=	www perl5

HOMEPAGE=	http://httpd.apache.org/apreq/
MAINTAINER=	Michael Coulter <mjc@openbsd.org>

# Apache Software License
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=	${MASTER_SITE_PERL_CPAN:=Apache/}

BUILD_DEPENDS=	:mod_perl-*:www/mod_perl \
		:p5-Apache-Test-*:www/p5-Apache-Test

RUN_DEPENDS=	:mod_perl-*:www/mod_perl

CONFIGURE_STYLE=perl

# XXX broken, see p5-Apache-Test
NO_REGRESS=	Yes

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/p5-libapreq
	@cp -R ${WRKSRC}/eg/* ${PREFIX}/share/examples/p5-libapreq
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/libapreq
	${INSTALL_DATA} ${WRKSRC}/LICENSE ${PREFIX}/share/doc/libapreq

.include <bsd.port.mk>
