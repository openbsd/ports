# $OpenBSD: Makefile,v 1.12 2013/10/11 23:49:04 naddy Exp $

COMMENT=	create dynamic PerlIO layers

MODULES=	cpan
DISTNAME=	PerlIO-via-dynamic-0.13
REVISION=	1
CATEGORIES=	devel

MAINTAINER=	Kevin Lo <kevlo@openbsd.org>

# Artistic
PERMIT_PACKAGE_CDROM=	Yes

RUN_DEPENDS=	devel/p5-Internals
BUILD_DEPENDS=	${RUN_DEPENDS}

.include <bsd.port.mk>
