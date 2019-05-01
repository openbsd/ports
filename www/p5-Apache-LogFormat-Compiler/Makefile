# $OpenBSD: Makefile,v 1.3 2019/05/01 19:57:07 sthen Exp $

COMMENT =		compile a log format string to perl-code

MODULES =		cpan
PKG_ARCH =		*
DISTNAME =		Apache-LogFormat-Compiler-0.32
CATEGORIES =		www
REVISION =		0

# Perl
PERMIT_PACKAGE_CDROM =	Yes

CONFIGURE_STYLE =	modbuild

RUN_DEPENDS =		devel/p5-POSIX-strftime-Compiler

TEST_DEPENDS =		www/p5-HTTP-Message>=0 \
			devel/p5-Test-MockTime>=0 \
			devel/p5-Test-Requires>=0 \
			devel/p5-Try-Tiny>=0.12 \
			www/p5-URI>=1.60

.include <bsd.port.mk>
