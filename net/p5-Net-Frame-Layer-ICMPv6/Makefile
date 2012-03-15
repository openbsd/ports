# $OpenBSD: Makefile,v 1.2 2012/03/15 17:47:56 gsoares Exp $

COMMENT=	ICMP v6 layer object

MODULES=	cpan
DISTNAME=	Net-Frame-Layer-ICMPv6-1.06
CATEGORIES=	net

MAINTAINER=	Gleydson Soares <gsoares@openbsd.org>

# Artistic
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

RUN_DEPENDS=	net/p5-Net-Frame
BUILD_DEPENDS=	${RUN_DEPENDS}

MODCPAN_EXAMPLES=	Yes

.include <bsd.port.mk>
