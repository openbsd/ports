# $OpenBSD: Makefile,v 1.12 2010/07/13 20:14:23 sthen Exp $

COMMENT=	Test wrapper with helpers for testing Apache

MODULES=	cpan
DISTNAME=	Apache-Test-1.30
REVISION=	0
CATEGORIES=	www

MAINTAINER=	Simon Bertrang <simon@openbsd.org>

# Apache License 2.0
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MAKE_ENV+=	APACHE_TEST_HTTPD=/usr/sbin/httpd

pre-configure:
	@perl -pi -e 's|%%LOCALBASE%%|${LOCALBASE}|g' \
		${WRKSRC}/lib/Apache/TestConfig.pm

.include <bsd.port.mk>
