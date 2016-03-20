# $OpenBSD: Makefile,v 1.6 2016/03/20 19:56:57 naddy Exp $

COMMENT=	provide patterns for CIDR blocks

MODULES=	cpan
PKG_ARCH=	*

DISTNAME =	Regexp-Common-net-CIDR-0.03
CATEGORIES=	net textproc

# perl
PERMIT_PACKAGE_CDROM=	Yes

RUN_DEPENDS=	textproc/p5-Regexp-Common
BUILD_DEPENDS=	${RUN_DEPENDS}

.include <bsd.port.mk>
