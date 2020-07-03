# $OpenBSD: Makefile,v 1.10 2020/07/03 21:44:59 sthen Exp $

COMMENT=		set up Log::Dispatch::Config for a test run

DISTNAME=		Log-Dispatch-Config-TestLog-0.02
REVISION=		0

CATEGORIES=		devel

# perl
PERMIT_PACKAGE=	Yes

MODULES=		cpan
PKG_ARCH=		*

RUN_DEPENDS=		devel/p5-Log-Dispatch-Binlog \
			devel/p5-Log-Dispatch-Config \
			devel/p5-Path-Class \
			devel/p5-Sub-Override
TEST_DEPENDS=		devel/p5-Perl-Command \
			devel/p5-Test-Deep

.include <bsd.port.mk>
