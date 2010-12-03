# $OpenBSD: Makefile,v 1.5 2010/12/03 11:44:33 ajacoutot Exp $

COMMENT=	extend your attribute interfaces

DISTNAME=	MooseX-AttributeHelpers-0.23
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

.include <bsd.port.mk>
