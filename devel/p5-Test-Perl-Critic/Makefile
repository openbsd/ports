# $OpenBSD: Makefile,v 1.8 2013/03/11 10:50:22 espie Exp $

COMMENT= 	test framework to run Perl::Critic

MODULES=	cpan
DISTNAME=	Test-Perl-Critic-1.02
REVISION=	0
CATEGORIES=	devel
USE_GROFF =	Yes

# perl
PERMIT_PACKAGE_CDROM=	Yes

CONFIGURE_STYLE=	modbuild

RUN_DEPENDS=		devel/p5-Perl-Critic

MAKE_ENV=		TEST_POD=Yes

.include <bsd.port.mk>
