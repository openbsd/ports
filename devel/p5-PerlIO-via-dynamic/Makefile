# $OpenBSD: Makefile,v 1.16 2020/07/03 21:45:06 sthen Exp $

COMMENT=	create dynamic PerlIO layers

MODULES=	cpan
PKG_ARCH=	*
DISTNAME =	PerlIO-via-dynamic-0.14
CATEGORIES=	devel
REVISION =	0

MAINTAINER =	Benoit Lecocq <benoit@openbsd.org>

# Artistic
PERMIT_PACKAGE=	Yes

RUN_DEPENDS=	devel/p5-Internals
BUILD_DEPENDS=	${RUN_DEPENDS}

.include <bsd.port.mk>
