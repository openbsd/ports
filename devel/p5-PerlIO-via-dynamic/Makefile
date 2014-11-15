# $OpenBSD: Makefile,v 1.13 2014/11/15 16:52:38 benoit Exp $

COMMENT=	create dynamic PerlIO layers

MODULES=	cpan
DISTNAME =	PerlIO-via-dynamic-0.14
CATEGORIES=	devel

MAINTAINER =	Benoit Lecocq <benoit@openbsd.org>

# Artistic
PERMIT_PACKAGE_CDROM=	Yes

RUN_DEPENDS=	devel/p5-Internals
BUILD_DEPENDS=	${RUN_DEPENDS}

.include <bsd.port.mk>
