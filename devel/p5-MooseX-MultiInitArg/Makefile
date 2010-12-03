# $OpenBSD: Makefile,v 1.4 2010/12/03 11:44:33 ajacoutot Exp $

COMMENT=	attributes with aliases for constructor arguments for MooseX

DISTNAME=	MooseX-MultiInitArg-0.01
REVISION=	0

CATEGORIES=	devel

MAINTAINER=	Kevin Lo <kevlo@openbsd.org>

# Perl
PERMIT_PACKAGE_CDROM =		Yes
PERMIT_PACKAGE_FTP =		Yes
PERMIT_DISTFILES_CDROM =	Yes
PERMIT_DISTFILES_FTP =		Yes

MODULES=	cpan
USE_GROFF =	Yes
RUN_DEPENDS=	devel/p5-Moose
BUILD_DEPENDS=	${RUN_DEPENDS}

MAKE_ENV=	TEST_POD=Yes

.include <bsd.port.mk>
