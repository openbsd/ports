# $OpenBSD: Makefile,v 1.10 2016/03/20 19:56:26 naddy Exp $

COMMENT=	write Perl subroutines in other programming languages

MODULES=	cpan
PKG_ARCH=	*
DISTNAME =	Inline-0.52
REVISION=	0
CATEGORIES=	devel

MAINTAINER=	Gleydson Soares <gsoares@openbsd.org>

# perl
PERMIT_PACKAGE_CDROM=	Yes

RUN_DEPENDS=	devel/p5-Parse-RecDescent
TEST_DEPENDS=	devel/p5-Test-Warn

.include <bsd.port.mk>
