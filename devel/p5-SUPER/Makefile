# $OpenBSD: Makefile,v 1.1.1.1 2009/10/05 12:53:44 kevlo Exp $

COMMENT=	module for controlling superclass method dispatch

DISTNAME=	SUPER-1.16

CATEGORIES=	devel

MAINTAINER=	Kevin Lo <kevlo@openbsd.org>

# perl
PERMIT_PACKAGE_CDROM=   Yes
PERMIT_PACKAGE_FTP=     Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=   Yes

MODULES=	cpan
BUILD_DEPENDS=	${RUN_DEPENDS}
RUN_DEPENDS=	::devel/p5-Sub-Identify

.include <bsd.port.mk>
