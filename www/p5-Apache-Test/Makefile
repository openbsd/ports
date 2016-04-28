# $OpenBSD: Makefile,v 1.22 2016/04/28 16:49:41 sthen Exp $

COMMENT=	test wrapper with helpers for testing Apache

MODULES=	cpan
PKG_ARCH=	*
DISTNAME=	Apache-Test-1.39
CATEGORIES=	www

# Apache License 2.0
PERMIT_PACKAGE_CDROM=	Yes

MAKE_ENV+=	APACHE_TEST_HTTPD=${LOCALBASE}/sbin/httpd2

RUN_DEPENDS=	www/apache-httpd
TEST_DEPENDS +=	www/p5-libwww

pre-configure:
	@perl -pi -e 's|%%LOCALBASE%%|${LOCALBASE}|g' \
		${WRKSRC}/lib/Apache/TestConfig.pm

post-install:
	find ${PREFIX}/${P5SITE} -name '*.orig' -print0 | xargs -r0 rm

.include <bsd.port.mk>
