# $OpenBSD: Makefile,v 1.12 2016/04/03 11:34:42 bluhm Exp $

COMMENT=	test framework to run Perl::Critic

MODULES=	cpan
PKG_ARCH=	*
DISTNAME=	Test-Perl-Critic-1.03
REVISION=	0
CATEGORIES=	devel

# perl
PERMIT_PACKAGE_CDROM=	Yes

CONFIGURE_STYLE=	modbuild

RUN_DEPENDS=		devel/p5-Perl-Critic \
			devel/p5-MCE

MAKE_ENV=		TEST_POD=Yes

.include <bsd.port.mk>
