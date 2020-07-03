# $OpenBSD: Makefile,v 1.11 2020/07/03 21:45:02 sthen Exp $

COMMENT=	attributes with aliases for constructor arguments for MooseX

DISTNAME=	MooseX-MultiInitArg-0.02
REVISION=	0

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
