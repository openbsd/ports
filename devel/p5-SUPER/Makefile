# $OpenBSD: Makefile,v 1.7 2013/10/11 23:49:09 naddy Exp $

COMMENT=	module for controlling superclass method dispatch

DISTNAME=	SUPER-1.17
REVISION=	0

CATEGORIES=	devel

MAINTAINER=	Kevin Lo <kevlo@openbsd.org>

# perl
PERMIT_PACKAGE_CDROM=   Yes

MODULES=	cpan
BUILD_DEPENDS=	${RUN_DEPENDS}
RUN_DEPENDS=	devel/p5-Sub-Identify

CONFIGURE_STYLE=modbuild

.include <bsd.port.mk>
