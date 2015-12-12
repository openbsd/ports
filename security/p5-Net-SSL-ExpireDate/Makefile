# $OpenBSD: Makefile,v 1.5 2015/12/12 21:37:20 benoit Exp $

COMMENT =		obtain expiration date of SSL certificate

DISTNAME =		Net-SSL-ExpireDate-1.15
CATEGORIES =		security

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
