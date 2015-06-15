# $OpenBSD: Makefile,v 1.5 2015/06/15 07:56:53 benoit Exp $

COMMENT=	provide patterns for CIDR blocks

MODULES=	cpan

DISTNAME =	Regexp-Common-net-CIDR-0.03
CATEGORIES=	net textproc

# perl
PERMIT_PACKAGE_CDROM=	Yes

RUN_DEPENDS=	textproc/p5-Regexp-Common
BUILD_DEPENDS=	${RUN_DEPENDS}

.include <bsd.port.mk>
