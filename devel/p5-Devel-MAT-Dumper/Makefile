COMMENT =	write a heap dump file for later analysis

DISTNAME =	Devel-MAT-Dumper-0.48

CATEGORIES =	devel

MAINTAINER =		Alexander Bluhm <bluhm@openbsd.org>

# Perl
PERMIT_PACKAGE =	Yes

WANTLIB =		c perl

MODULES =		cpan

CONFIGURE_STYLE =	modbuild

MAKE_ENV =		TEST_POD=Yes

.include <bsd.port.arch.mk>
.if !${PROPERTIES:Mclang}
CFLAGS +=	-std=gnu99
.endif

.include <bsd.port.mk>
