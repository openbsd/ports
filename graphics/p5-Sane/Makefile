# $OpenBSD: Makefile,v 1.3 2015/07/16 23:57:24 ajacoutot Exp $

SHARED_ONLY=		Yes

COMMENT=		Perl extension for the SANE Project

DISTNAME=		Sane-0.05
REVISION=		1

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
