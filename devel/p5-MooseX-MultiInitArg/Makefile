# $OpenBSD: Makefile,v 1.8 2016/03/20 19:56:29 naddy Exp $

COMMENT=	attributes with aliases for constructor arguments for MooseX

DISTNAME=	MooseX-MultiInitArg-0.01
REVISION=	1

CATEGORIES=	devel

# Perl
PERMIT_PACKAGE_CDROM =		Yes

MODULES=	cpan
PKG_ARCH=	*
RUN_DEPENDS=	devel/p5-Moose
BUILD_DEPENDS=	${RUN_DEPENDS}

MAKE_ENV=	TEST_POD=Yes

.include <bsd.port.mk>
