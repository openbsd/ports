# $OpenBSD: Makefile,v 1.18 2015/07/17 23:58:43 ajacoutot Exp $

COMMENT=	test wrapper with helpers for testing Apache

MODULES=	cpan
DISTNAME=	Apache-Test-1.30
REVISION=	3
CATEGORIES=	www

MAINTAINER=	Simon Bertrang <simon@openbsd.org>

# Apache License 2.0
PERMIT_PACKAGE_CDROM=	Yes

# Sets the default, but can be overridden, therefore allow a choice of run dep.
MAKE_ENV+=	APACHE_TEST_HTTPD=${LOCALBASE}/sbin/httpd

RUN_DEPENDS=	apache-httpd-*|apache-httpd-openbsd-*:www/apache-httpd-openbsd
TEST_DEPENDS +=	www/p5-libwww

pre-configure:
	@perl -pi -e 's|%%LOCALBASE%%|${LOCALBASE}|g' \
		${WRKSRC}/lib/Apache/TestConfig.pm

post-install:
	find ${PREFIX}/${P5SITE} -name '*.orig' -print0 | xargs -r0 rm

.include <bsd.port.mk>
