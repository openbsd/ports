# $OpenBSD: Makefile,v 1.6 2019/07/12 20:47:07 sthen Exp $

COMMENT=		Perl extension for the SANE Project

DISTNAME=		Sane-0.05
REVISION=		2

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
