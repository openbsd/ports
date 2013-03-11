# $OpenBSD: Makefile,v 1.5 2013/03/11 10:50:19 espie Exp $

COMMENT=	attributes with aliases for constructor arguments for MooseX

DISTNAME=	MooseX-MultiInitArg-0.01
REVISION=	0

CATEGORIES=	devel

MAINTAINER=	Kevin Lo <kevlo@openbsd.org>

# Perl
PERMIT_PACKAGE_CDROM =		Yes

MODULES=	cpan
USE_GROFF =	Yes
RUN_DEPENDS=	devel/p5-Moose
BUILD_DEPENDS=	${RUN_DEPENDS}

MAKE_ENV=	TEST_POD=Yes

.include <bsd.port.mk>
