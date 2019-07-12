# $OpenBSD: Makefile,v 1.18 2019/07/12 20:44:45 sthen Exp $

COMMENT=	debugging and tracing ultimate module

MODULES=	cpan
PKG_ARCH=	*
DISTNAME=	Carp-Datum-0.1.3
REVISION=	4
CATEGORIES=	devel
FIX_EXTRACT_PERMISSIONS=	Yes

# Artistic License
PERMIT_PACKAGE=	Yes

RUN_DEPENDS=	devel/p5-Getargs-Long>=0.1.3
BUILD_DEPENDS=	${RUN_DEPENDS}

.include <bsd.port.mk>
