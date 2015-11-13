# $OpenBSD: Makefile,v 1.10 2015/11/13 09:34:48 ajacoutot Exp $

COMMENT=	test framework to run Perl::Critic

MODULES=	cpan
DISTNAME=	Test-Perl-Critic-1.03
CATEGORIES=	devel

# perl
PERMIT_PACKAGE_CDROM=	Yes

CONFIGURE_STYLE=	modbuild

RUN_DEPENDS=		devel/p5-Perl-Critic

MAKE_ENV=		TEST_POD=Yes

.include <bsd.port.mk>
