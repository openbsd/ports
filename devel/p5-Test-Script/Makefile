# $OpenBSD: Makefile,v 1.11 2017/01/23 12:33:12 bluhm Exp $

COMMENT= 	cross-platform basic tests for scripts

MODULES=	cpan
PKG_ARCH=	*

DISTNAME =	Test-Script-1.14
CATEGORIES=	devel

MAINTAINER =		Alexander Bluhm <bluhm@openbsd.org>

# Perl
PERMIT_PACKAGE_CDROM=	Yes

RUN_DEPENDS=	devel/p5-IPC-Run3>=0.034 \
		devel/p5-Probe-Perl>=0.01
TEST_DEPENDS =	devel/p5-Test-Tester

.include <bsd.port.mk>
