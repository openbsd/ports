# $OpenBSD: Makefile,v 1.1.1.1 2002/10/16 13:09:30 wilfried Exp $

COMMENT=	"Generic Apache Request Library"

DISTNAME=	libapreq-1.0
PKGNAME=	p5-${DISTNAME}
CATEGORIES=	www perl5

HOMEPAGE=	http://httpd.apache.org/apreq/
MAINTAINER=	Jim Geovedi <jim@corebsd.or.id>

# Apache Software License
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=	${MASTER_SITE_PERL_CPAN:=Apache/}

BUILD_DEPENDS=	:mod_perl-*:www/mod_perl 
RUN_DEPENDS=	${BUILD_DEPENDS}

CONFIGURE_STYLE=	perl

PATCH_LIST=	${PORTSDIR}/infrastructure/patches/patch-lt1.3.3-ltconfig \
		${PORTSDIR}/infrastructure/patches/patch-lt1.3.3-ltmain_sh \
		patch-*

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/p5-libapreq
	@cp -R ${WRKSRC}/eg/* ${PREFIX}/share/examples/p5-libapreq
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/libapreq
	${INSTALL_DATA} ${WRKSRC}/LICENSE ${PREFIX}/share/doc/libapreq

.include <bsd.port.mk>
