# $OpenBSD: Makefile,v 1.19 2019/07/12 20:44:46 sthen Exp $

COMMENT=	stack trace for catalyst

MODULES=	cpan
PKG_ARCH=	*
DISTNAME=	Catalyst-Plugin-StackTrace-0.11
CATEGORIES=	devel
REVISION=	0

# perl
PERMIT_PACKAGE=	Yes

RUN_DEPENDS=	devel/p5-Devel-StackTrace \
		devel/p5-MRO-Compat \
		www/p5-Catalyst-Runtime

MAKE_ENV=	TEST_POD=Yes

CONFIGURE_STYLE =	modinst

.include <bsd.port.mk>
