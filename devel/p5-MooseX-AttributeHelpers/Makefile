# $OpenBSD: Makefile,v 1.1.1.1 2009/11/17 04:45:04 kevlo Exp $

COMMENT=	extend your attribute interfaces

DISTNAME=	MooseX-AttributeHelpers-0.22

CATEGORIES=	devel

MAINTAINER=	Kevin Lo <kevlo@openbsd.org>

# Perl
PERMIT_PACKAGE_CDROM =		Yes
PERMIT_PACKAGE_FTP =		Yes
PERMIT_DISTFILES_CDROM =	Yes
PERMIT_DISTFILES_FTP =		Yes

MODULES=	cpan
RUN_DEPENDS=	::devel/p5-Moose
BUILD_DEPENDS=	${RUN_DEPENDS}

.include <bsd.port.mk>
