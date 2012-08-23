# $OpenBSD: Makefile,v 1.15 2012/08/23 16:02:37 sthen Exp $

SHARED_ONLY=	Yes

COMMENT=	generic Apache Request library

MODULES=	cpan
DISTNAME=	libapreq-1.34
REVISION=	2
CATEGORIES=	www
USE_GROFF =	Yes

HOMEPAGE=	http://httpd.apache.org/apreq/

# Apache Software License
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

WANTLIB += c

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
