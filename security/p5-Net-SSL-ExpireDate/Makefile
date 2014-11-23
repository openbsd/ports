# $OpenBSD: Makefile,v 1.3 2014/11/23 14:40:40 benoit Exp $

COMMENT =		obtain expiration date of SSL certificate

DISTNAME =		Net-SSL-ExpireDate-1.12
CATEGORIES =		security

REVISION =		0

# Perl
PERMIT_PACKAGE_CDROM =	Yes

MODULES =		cpan
RUN_DEPENDS =		devel/p5-Time-Duration-Parse \
			security/p5-Crypt-OpenSSL-X509 \
			devel/p5-Universal-require \
			devel/p5-DateTime \
			devel/p5-Time-TimeDate \
			devel/p5-Class-Accessor
TEST_DEPENDS =		${RUN_DEPENDS}

.include <bsd.port.mk>
