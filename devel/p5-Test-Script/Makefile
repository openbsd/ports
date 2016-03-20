# $OpenBSD: Makefile,v 1.10 2016/03/20 19:56:38 naddy Exp $

COMMENT= 	cross-platform basic tests for scripts

MODULES=	cpan
PKG_ARCH=	*

DISTNAME =	Test-Script-1.10
CATEGORIES=	devel

# Perl
PERMIT_PACKAGE_CDROM=	Yes

RUN_DEPENDS=	devel/p5-IPC-Run3>=0.034 \
		devel/p5-Probe-Perl>=0.01
BUILD_DEPENDS = ${RUN_DEPENDS}
TEST_DEPENDS =	devel/p5-Test-Tester

.include <bsd.port.mk>
