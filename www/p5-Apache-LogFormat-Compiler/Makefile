# $OpenBSD: Makefile,v 1.1.1.1 2015/01/18 00:19:35 benoit Exp $

COMMENT =		compile a log format string to perl-code

MODULES =		cpan
DISTNAME =		Apache-LogFormat-Compiler-0.32
CATEGORIES =		www

MAINTAINER =		Cesare Gargano <gar@plusiagamma.org>

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
