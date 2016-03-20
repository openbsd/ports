# $OpenBSD: Makefile,v 1.11 2016/03/20 19:56:38 naddy Exp $

COMMENT=	test framework to run Perl::Critic

MODULES=	cpan
PKG_ARCH=	*
DISTNAME=	Test-Perl-Critic-1.03
CATEGORIES=	devel

# perl
PERMIT_PACKAGE_CDROM=	Yes

CONFIGURE_STYLE=	modbuild

RUN_DEPENDS=		devel/p5-Perl-Critic

MAKE_ENV=		TEST_POD=Yes

.include <bsd.port.mk>
