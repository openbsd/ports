# $OpenBSD: Makefile,v 1.20 2020/07/03 21:44:41 sthen Exp $

COMMENT=	stack trace for catalyst

MODULES=	cpan
PKG_ARCH=	*
DISTNAME=	Catalyst-Plugin-StackTrace-0.11
CATEGORIES=	devel
REVISION=	1

# perl
PERMIT_PACKAGE=	Yes

RUN_DEPENDS=	devel/p5-Devel-StackTrace \
		devel/p5-MRO-Compat \
		www/p5-Catalyst-Runtime

MAKE_ENV=	TEST_POD=Yes

CONFIGURE_STYLE =	modinst

.include <bsd.port.mk>
