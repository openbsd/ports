# $OpenBSD: Makefile,v 1.8 2020/07/03 21:45:38 sthen Exp $

COMMENT=	provide patterns for CIDR blocks

MODULES=	cpan
PKG_ARCH=	*

DISTNAME =	Regexp-Common-net-CIDR-0.03
CATEGORIES=	net textproc
REVISION =	0

# perl
PERMIT_PACKAGE=	Yes

RUN_DEPENDS=	textproc/p5-Regexp-Common
BUILD_DEPENDS=	${RUN_DEPENDS}

.include <bsd.port.mk>
