# $OpenBSD: Makefile,v 1.7 2019/07/12 20:48:41 sthen Exp $

COMMENT=	provide patterns for CIDR blocks

MODULES=	cpan
PKG_ARCH=	*

DISTNAME =	Regexp-Common-net-CIDR-0.03
CATEGORIES=	net textproc

# perl
PERMIT_PACKAGE=	Yes

RUN_DEPENDS=	textproc/p5-Regexp-Common
BUILD_DEPENDS=	${RUN_DEPENDS}

.include <bsd.port.mk>
