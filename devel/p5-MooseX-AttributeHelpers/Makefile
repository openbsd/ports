# $OpenBSD: Makefile,v 1.4 2010/11/15 19:46:04 espie Exp $

COMMENT=	extend your attribute interfaces

DISTNAME=	MooseX-AttributeHelpers-0.23

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

.include <bsd.port.mk>
