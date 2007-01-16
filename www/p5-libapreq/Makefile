# $OpenBSD: Makefile,v 1.5 2007/01/16 17:52:07 simon Exp $

SHARED_ONLY=	Yes

COMMENT=	"Generic Apache Request Library"

MODULES=	cpan
DISTNAME=	libapreq-1.3
CATEGORIES=	www

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

# XXX broken, see p5-Apache-Test
NO_REGRESS=	Yes

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/p5-libapreq
	@cp -R ${WRKSRC}/eg/* ${PREFIX}/share/examples/p5-libapreq
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/libapreq
	${INSTALL_DATA} ${WRKSRC}/LICENSE ${PREFIX}/share/doc/libapreq

.include <bsd.port.mk>
