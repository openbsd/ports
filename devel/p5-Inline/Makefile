# $OpenBSD: Makefile,v 1.12 2020/07/03 21:44:57 sthen Exp $

COMMENT=	write Perl subroutines in other programming languages

MODULES=	cpan
PKG_ARCH=	*
DISTNAME =	Inline-0.52
REVISION=	1
CATEGORIES=	devel

MAINTAINER=	Gleydson Soares <gsoares@openbsd.org>

# perl
PERMIT_PACKAGE=	Yes

RUN_DEPENDS=	devel/p5-Parse-RecDescent
TEST_DEPENDS=	devel/p5-Test-Warn

.include <bsd.port.mk>
