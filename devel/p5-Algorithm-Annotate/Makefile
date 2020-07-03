# $OpenBSD: Makefile,v 1.16 2020/07/03 21:44:38 sthen Exp $

COMMENT=	represent a series of changes in annotate form

MODULES=	cpan
PKG_ARCH=	*
DISTNAME=	Algorithm-Annotate-0.10
REVISION=	3
CATEGORIES=	devel

PERMIT_PACKAGE=	Yes

RUN_DEPENDS=	devel/p5-Algorithm-Diff>=1.1901
BUILD_DEPENDS=	${RUN_DEPENDS}

.include <bsd.port.mk>
