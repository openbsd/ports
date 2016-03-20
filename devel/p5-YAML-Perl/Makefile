# $OpenBSD: Makefile,v 1.4 2016/03/20 19:56:41 naddy Exp $

COMMENT=		pure Perl implementation of YAML

DISTNAME=		YAML-Perl-0.02
CATEGORIES=		devel

MODULES=		cpan
PKG_ARCH=		*
CPAN_AUTHOR=		INGY

# Perl
PERMIT_PACKAGE_CDROM =		Yes

BUILD_DEPENDS=		${RUN_DEPENDS}
RUN_DEPENDS=		devel/p5-Error
TEST_DEPENDS=	devel/p5-Test-Deep \
			devel/p5-YAML-XS

.include <bsd.port.mk>
