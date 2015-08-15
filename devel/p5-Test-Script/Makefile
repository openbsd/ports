# $OpenBSD: Makefile,v 1.9 2015/08/15 20:48:20 benoit Exp $

COMMENT= 	cross-platform basic tests for scripts

MODULES=	cpan

DISTNAME =	Test-Script-1.10
CATEGORIES=	devel

# Perl
PERMIT_PACKAGE_CDROM=	Yes

RUN_DEPENDS=	devel/p5-IPC-Run3>=0.034 \
		devel/p5-Probe-Perl>=0.01
BUILD_DEPENDS = ${RUN_DEPENDS}
TEST_DEPENDS =	devel/p5-Test-Tester

.include <bsd.port.mk>
