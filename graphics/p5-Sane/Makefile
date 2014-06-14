# $OpenBSD: Makefile,v 1.2 2014/06/14 23:25:21 sthen Exp $

SHARED_ONLY=		Yes

COMMENT=		Perl extension for the SANE Project

DISTNAME=		Sane-0.05
REVISION=		0

CATEGORIES=		graphics

# Perl
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += sane

MODULES=		cpan

MODCPAN_EXAMPLES=	Yes

LIB_DEPENDS=		graphics/sane-backends

BUILD_DEPENDS=		devel/p5-ExtUtils-Depends \
			devel/p5-ExtUtils-PkgConfig

TEST_DEPENDS=		devel/p5-Test-Pod

.include <bsd.port.mk>
