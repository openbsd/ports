# $OpenBSD: Makefile,v 1.15 2019/07/12 20:45:04 sthen Exp $

COMMENT=	create dynamic PerlIO layers

MODULES=	cpan
PKG_ARCH=	*
DISTNAME =	PerlIO-via-dynamic-0.14
CATEGORIES=	devel

MAINTAINER =	Benoit Lecocq <benoit@openbsd.org>

# Artistic
PERMIT_PACKAGE=	Yes

RUN_DEPENDS=	devel/p5-Internals
BUILD_DEPENDS=	${RUN_DEPENDS}

.include <bsd.port.mk>
