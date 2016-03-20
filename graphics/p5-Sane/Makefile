# $OpenBSD: Makefile,v 1.4 2016/03/20 19:56:44 naddy Exp $

COMMENT=		Perl extension for the SANE Project

DISTNAME=		Sane-0.05
REVISION=		1

CATEGORIES=		graphics

# Perl
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += perl sane

MODULES=		cpan

MODCPAN_EXAMPLES=	Yes

LIB_DEPENDS=		graphics/sane-backends

BUILD_DEPENDS=		devel/p5-ExtUtils-Depends \
			devel/p5-ExtUtils-PkgConfig

TEST_DEPENDS=		devel/p5-Test-Pod

.include <bsd.port.mk>
