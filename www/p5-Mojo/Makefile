COMMENT =	next generation web framework for Perl

MODULES =	cpan
PKG_ARCH =	*
DISTNAME =	Mojolicious-9.37
CATEGORIES =	www

# Artistic 2.0
PERMIT_PACKAGE =		Yes

HOMEPAGE =	https://mojolicious.org/

RUN_DEPENDS =	converters/p5-Cpanel-JSON-XS>=4.09 \
		devel/p5-EV>=4.32 \
		security/p5-IO-Socket-SSL>=2.009

TEST_DEPENDS +=	net/p5-IO-Socket-Socks \
		devel/p5-Role-Tiny>=2.000001

MAKE_ENV += TEST_EV=Yes
MAKE_ENV += TEST_HYPNOTOAD=Yes
MAKE_ENV += TEST_IPV6=YES
MAKE_ENV += TEST_MORBO=Yes
MAKE_ENV += TEST_POD=Yes
MAKE_ENV += TEST_PREFORK=Yes
MAKE_ENV += TEST_SOCKS=YES
MAKE_ENV += TEST_SUBPROCESS=Yes
MAKE_ENV += TEST_TLS=YES
MAKE_ENV += TEST_UNIX=YES

# see pkg/README for certificate handling
post-install:
	rm -rf ${PREFIX}/${P5SITE}/Mojo/IOLoop/resources/server.{crt,key}

.include <bsd.port.mk>
