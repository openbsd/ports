# $OpenBSD: Makefile,v 1.1.1.1 2011/03/19 18:02:38 jasper Exp $

COMMENT=	ICMP v6 layer object

MODULES=	cpan
DISTNAME=	Net-Frame-Layer-ICMPv6-1.05
CATEGORIES=	net

MAINTAINER=	Gleydson Soares <gsoares@trusted.com.br>

# Artistic
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

RUN_DEPENDS=	net/p5-Net-Frame
BUILD_DEPENDS=	${RUN_DEPENDS}

MODCPAN_EXAMPLES=	Yes

.include <bsd.port.mk>
