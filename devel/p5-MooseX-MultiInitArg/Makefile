# $OpenBSD: Makefile,v 1.10 2019/07/12 20:45:01 sthen Exp $

COMMENT=	attributes with aliases for constructor arguments for MooseX

DISTNAME=	MooseX-MultiInitArg-0.02

CATEGORIES=	devel

# Perl
PERMIT_PACKAGE =		Yes

MODULES=	cpan
PKG_ARCH=	*
RUN_DEPENDS=	devel/p5-Moose
BUILD_DEPENDS=	${RUN_DEPENDS} \
		devel/p5-Module-Build-Tiny

CONFIGURE_STYLE=	modbuild

MAKE_ENV=	TEST_POD=Yes

.include <bsd.port.mk>
