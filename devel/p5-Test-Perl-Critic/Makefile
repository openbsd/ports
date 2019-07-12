# $OpenBSD: Makefile,v 1.13 2019/07/12 20:45:11 sthen Exp $

COMMENT=	test framework to run Perl::Critic

MODULES=	cpan
PKG_ARCH=	*
DISTNAME=	Test-Perl-Critic-1.03
REVISION=	0
CATEGORIES=	devel

# perl
PERMIT_PACKAGE=	Yes

CONFIGURE_STYLE=	modbuild

RUN_DEPENDS=		devel/p5-Perl-Critic \
			devel/p5-MCE

MAKE_ENV=		TEST_POD=Yes

.include <bsd.port.mk>
