# $OpenBSD: Makefile,v 1.3 2012/03/15 17:38:19 gsoares Exp $

COMMENT=	base framework for frame crafting

MODULES=	cpan
DISTNAME=	Net-Frame-1.09
CATEGORIES=	net

MAINTAINER=	Gleydson Soares <gsoares@openbsd.org>

# Artistic
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

RUN_DEPENDS=	net/p5-Socket6 \
		net/p5-Net-IPv6Addr \
		devel/p5-Class-Gomor \
		math/p5-Bit-Vector
BUILD_DEPENDS=	${RUN_DEPENDS}

MODCPAN_EXAMPLES=	Yes

.include <bsd.port.mk>
