# $OpenBSD: Makefile,v 1.6 2013/03/11 10:50:21 espie Exp $

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
USE_GROFF =	Yes

.include <bsd.port.mk>
