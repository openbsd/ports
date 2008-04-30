# $OpenBSD: Makefile,v 1.10 2008/04/30 19:25:23 simon Exp $

COMMENT=	Test wrapper with helpers for testing Apache

MODULES=	cpan
DISTNAME=	Apache-Test-1.30
CATEGORIES=	www

MAINTAINER=	Simon Bertrang <simon@openbsd.org>

# Apache License 2.0
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MAKE_ENV+=	APACHE_TEST_HTTPD=/usr/sbin/httpd

.include <bsd.port.mk>
