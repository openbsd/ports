# $OpenBSD: Makefile,v 1.14 2016/03/20 19:56:32 naddy Exp $

COMMENT=	create dynamic PerlIO layers

MODULES=	cpan
PKG_ARCH=	*
DISTNAME =	PerlIO-via-dynamic-0.14
CATEGORIES=	devel

MAINTAINER =	Benoit Lecocq <benoit@openbsd.org>

# Artistic
PERMIT_PACKAGE_CDROM=	Yes

RUN_DEPENDS=	devel/p5-Internals
BUILD_DEPENDS=	${RUN_DEPENDS}

.include <bsd.port.mk>
