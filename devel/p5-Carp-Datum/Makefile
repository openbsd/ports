# $OpenBSD: Makefile,v 1.19 2020/07/03 21:44:41 sthen Exp $

COMMENT=	debugging and tracing ultimate module

MODULES=	cpan
PKG_ARCH=	*
DISTNAME=	Carp-Datum-0.1.3
REVISION=	5
CATEGORIES=	devel
FIX_EXTRACT_PERMISSIONS=	Yes

# Artistic License
PERMIT_PACKAGE=	Yes

RUN_DEPENDS=	devel/p5-Getargs-Long>=0.1.3
BUILD_DEPENDS=	${RUN_DEPENDS}

.include <bsd.port.mk>
