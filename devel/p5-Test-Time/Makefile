COMMENT =	overrides time() and sleep() core functions for testing

DISTNAME =	Test-Time-0.092
CPAN_AUTHOR =	ANATOFUZ

CATEGORIES =	devel

MAINTAINER =		Julien Dhaille <julien.dhaille@gmail.com>

# Perl
PERMIT_PACKAGE =	Yes

MODULES =		cpan

PKG_ARCH =		*

post-extract:
	# remove dead code that is not needed
	rm -r -- ${WRKSRC}/inc

.include <bsd.port.mk>
