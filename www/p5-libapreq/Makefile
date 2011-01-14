# $OpenBSD: Makefile,v 1.14 2011/01/14 22:50:56 jasper Exp $

SHARED_ONLY=	Yes

COMMENT=	Generic Apache Request Library

MODULES=	cpan
DISTNAME=	libapreq-1.34
REVISION=	1
CATEGORIES=	www
USE_GROFF =	Yes

HOMEPAGE=	http://httpd.apache.org/apreq/

# Apache Software License
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=	${MASTER_SITE_PERL_CPAN:=Apache/}

BUILD_DEPENDS=	www/mod_perl \
		www/p5-Apache-Test

RUN_DEPENDS=	www/mod_perl

MAKE_ENV+=	APACHE_TEST_HTTPD=/usr/sbin/httpd
PORTHOME=	${WRKDIR}

MODCPAN_EXAMPLES=	Yes
MODCPAN_EXAMPLES_DIST=	eg

post-install:
	${MODCPAN_POST_INSTALL}
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/libapreq
	${INSTALL_DATA} ${WRKSRC}/LICENSE ${PREFIX}/share/doc/libapreq

.include <bsd.port.mk>
