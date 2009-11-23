# $OpenBSD: Makefile,v 1.2 2009/11/23 10:14:10 kevlo Exp $

COMMENT=	module for controlling superclass method dispatch

DISTNAME=	SUPER-1.17

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

CONFIGURE_STYLE=modbuild

.include <bsd.port.mk>
