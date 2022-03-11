COMMENT =	process runner with RAII pattern

DISTNAME =	Proc-Guard-0.07
CATEGORIES =	devel
REVISION =	0

MAINTAINER =	Benoit Lecocq <benoit@openbsd.org>

# Perl
PERMIT_PACKAGE =	Yes

MODULES =		cpan
PKG_ARCH =		*

CONFIGURE_STYLE =	modbuild

RUN_DEPENDS =		devel/p5-Class-Accessor-Lite
TEST_DEPENDS +=		sysutils/p5-File-Which \
			net/p5-Test-TCP \
			devel/p5-Test-Requires

.include <bsd.port.mk>
