# $OpenBSD: Makefile,v 1.8 2016/03/20 19:56:27 naddy Exp $

COMMENT=		set up Log::Dispatch::Config for a test run

DISTNAME=		Log-Dispatch-Config-TestLog-0.02

CATEGORIES=		devel

# perl
PERMIT_PACKAGE_CDROM=   Yes

MODULES=		cpan
PKG_ARCH=		*

RUN_DEPENDS=		devel/p5-Log-Dispatch-Binlog \
			devel/p5-Log-Dispatch-Config \
			devel/p5-Path-Class \
			devel/p5-Sub-Override
TEST_DEPENDS=		devel/p5-Perl-Command \
			devel/p5-Test-Deep

.include <bsd.port.mk>
