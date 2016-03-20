# $OpenBSD: Makefile,v 1.21 2016/03/20 19:57:23 naddy Exp $

COMMENT=	generic Apache Request library

MODULES=	cpan
DISTNAME=	libapreq-1.34
REVISION=	5
CATEGORIES=	www

HOMEPAGE=	http://httpd.apache.org/apreq/

# Apache Software License
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += c perl

MASTER_SITES=	${MASTER_SITE_PERL_CPAN:=Apache/}

BUILD_DEPENDS=	www/mod_perl \
		www/p5-Apache-Test

RUN_DEPENDS=	www/apache-httpd-openbsd \
		www/mod_perl

MAKE_ENV+=	APACHE_TEST_HTTPD=${LOCALBASE}/sbin/httpd
PORTHOME=	${WRKDIR}

MODCPAN_EXAMPLES=	Yes
MODCPAN_EXAMPLES_DIST=	eg

post-install:
	${MODCPAN_POST_INSTALL}
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/libapreq
	${INSTALL_DATA} ${WRKSRC}/LICENSE ${PREFIX}/share/doc/libapreq

.include <bsd.port.mk>
