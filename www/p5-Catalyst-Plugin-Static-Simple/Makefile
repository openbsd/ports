# $OpenBSD: Makefile,v 1.17 2019/07/12 20:50:52 sthen Exp $

COMMENT= 	serving static pages with catalyst

MODULES=	cpan
PKG_ARCH=	*
DISTNAME=	Catalyst-Plugin-Static-Simple-0.36
CATEGORIES=	www

# Perl
PERMIT_PACKAGE=	Yes

RUN_DEPENDS=	devel/p5-Moose \
		devel/p5-MooseX-Types \
		devel/p5-namespace-autoclean \
		www/p5-Catalyst-Runtime>=5.80008 \
		mail/p5-MIME-Types>=2.03
BUILD_DEPENDS=	${RUN_DEPENDS}
TEST_DEPENDS=	www/p5-Catalyst-Plugin-SubRequest>=0.15

MAKE_ENV=	TEST_POD=Yes

.include <bsd.port.mk>
