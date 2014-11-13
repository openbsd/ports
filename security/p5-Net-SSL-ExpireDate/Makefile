# $OpenBSD: Makefile,v 1.2 2014/11/13 16:45:16 benoit Exp $

COMMENT =		obtain expiration date of SSL certificate

DISTNAME =		Net-SSL-ExpireDate-1.12
CATEGORIES =		security

# Perl
PERMIT_PACKAGE_CDROM =	Yes

MODULES =		cpan
RUN_DEPENDS =		devel/p5-Time-Duration-Parse \
			security/p5-Crypt-OpenSSL-X509
TEST_DEPENDS =		devel/p5-DateTime

.include <bsd.port.mk>
