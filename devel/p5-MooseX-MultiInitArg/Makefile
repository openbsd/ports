# $OpenBSD: Makefile,v 1.6 2015/01/21 06:13:47 bentley Exp $

COMMENT=	attributes with aliases for constructor arguments for MooseX

DISTNAME=	MooseX-MultiInitArg-0.01
REVISION=	1

CATEGORIES=	devel

# Perl
PERMIT_PACKAGE_CDROM =		Yes

MODULES=	cpan
USE_GROFF =	Yes
RUN_DEPENDS=	devel/p5-Moose
BUILD_DEPENDS=	${RUN_DEPENDS}

MAKE_ENV=	TEST_POD=Yes

.include <bsd.port.mk>
