# $OpenBSD: Makefile,v 1.7 2020/07/03 21:45:24 sthen Exp $

COMMENT=		Perl extension for the SANE Project

DISTNAME=		Sane-0.05
REVISION=		3

CATEGORIES=		graphics

# Perl
PERMIT_PACKAGE=	Yes

WANTLIB += c perl sane

MODULES=		cpan

MODCPAN_EXAMPLES=	Yes

LIB_DEPENDS=		graphics/sane-backends

BUILD_DEPENDS=		devel/p5-ExtUtils-Depends \
			devel/p5-ExtUtils-PkgConfig

TEST_DEPENDS=		devel/p5-Test-Pod

.include <bsd.port.mk>
