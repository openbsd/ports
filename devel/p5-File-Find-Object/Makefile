COMMENT =	object oriented File::Find replacement

# Most versions start with v, some do not and confuse portroach, skip those.
PORTROACH =	skipv:0.0.1,0.0.2,0.3.0

DISTNAME =	File-Find-Object-0.3.8

CATEGORIES =	devel

MAINTAINER =		Alexander Bluhm <bluhm@openbsd.org>

# Artistic 2
PERMIT_PACKAGE =	Yes

MODULES =		cpan

RUN_DEPENDS =		devel/p5-Class-XSAccessor
TEST_DEPENDS =		devel/p5-File-TreeCreate \
			devel/p5-Test-File>=1.993

PKG_ARCH =		*

.include <bsd.port.mk>
