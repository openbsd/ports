# $OpenBSD: Makefile,v 1.1.1.1 2013/09/23 11:49:21 sthen Exp $

COMMENT =		obtain expiration date of SSL certificate

DISTNAME =		Net-SSL-ExpireDate-1.10

CATEGORIES =		security

# Perl
PERMIT_PACKAGE_CDROM =	Yes

MODULES =		cpan
RUN_DEPENDS =		devel/p5-Time-Duration-Parse \
			security/p5-Crypt-OpenSSL-X509

.include <bsd.port.mk>
