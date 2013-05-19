# $OpenBSD: Makefile,v 1.9 2013/05/19 20:06:19 sthen Exp $

COMMENT=	test framework to run Perl::Critic

MODULES=	cpan
DISTNAME=	Test-Perl-Critic-1.02
REVISION=	1
CATEGORIES=	devel

# perl
PERMIT_PACKAGE_CDROM=	Yes

CONFIGURE_STYLE=	modbuild

RUN_DEPENDS=		devel/p5-Perl-Critic

MAKE_ENV=		TEST_POD=Yes

.include <bsd.port.mk>
