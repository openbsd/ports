# $OpenBSD: Makefile,v 1.20 2021/12/27 00:12:25 afresh1 Exp $

COMMENT =		localization support for DateTime.pm

MODULES =		cpan
PKG_ARCH =		*
DISTNAME =		DateTime-Locale-1.33
CATEGORIES=		devel

MAINTAINER =		Andrew Hewus Fresh <afresh1@openbsd.org>

# Perl
PERMIT_PACKAGE =	Yes

RUN_DEPENDS =	devel/p5-Dist-CheckConflicts>=0.02 \
		devel/p5-File-ShareDir \
		devel/p5-Params-ValidationCompiler>=0.13 \
		devel/p5-Specio \
		devel/p5-namespace-autoclean>=0.19
BUILD_DEPENDS =	devel/p5-Dist-CheckConflicts>=0.02 \
		devel/p5-File-ShareDir-Install>=0.06

TEST_DEPENDS =	devel/p5-CPAN-Meta-Check>=0.011 \
		devel/p5-IPC-System-Simple \
		devel/p5-Path-Tiny \
		devel/p5-Test-File-ShareDir \
		devel/p5-Test2-Plugin-NoWarnings \
		devel/p5-Test2-Suite

.include <bsd.port.mk>
