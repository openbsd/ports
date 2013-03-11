# $OpenBSD: Makefile,v 1.15 2013/03/11 11:44:44 espie Exp $

COMMENT=	Test wrapper with helpers for testing Apache

MODULES=	cpan
DISTNAME=	Apache-Test-1.30
REVISION=	1
CATEGORIES=	www
USE_GROFF =	Yes

MAINTAINER=	Simon Bertrang <simon@openbsd.org>

# Apache License 2.0
PERMIT_PACKAGE_CDROM=	Yes

MAKE_ENV+=	APACHE_TEST_HTTPD=/usr/sbin/httpd

pre-configure:
	@perl -pi -e 's|%%LOCALBASE%%|${LOCALBASE}|g' \
		${WRKSRC}/lib/Apache/TestConfig.pm

.include <bsd.port.mk>
