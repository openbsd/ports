# $OpenBSD: Makefile,v 1.5 2017/09/23 10:51:07 sthen Exp $

COMMENT=		Perl extension for the SANE Project

DISTNAME=		Sane-0.05
REVISION=		2

CATEGORIES=		graphics

# Perl
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += c perl sane

MODULES=		cpan

MODCPAN_EXAMPLES=	Yes

LIB_DEPENDS=		graphics/sane-backends

BUILD_DEPENDS=		devel/p5-ExtUtils-Depends \
			devel/p5-ExtUtils-PkgConfig

TEST_DEPENDS=		devel/p5-Test-Pod

.include <bsd.port.mk>
