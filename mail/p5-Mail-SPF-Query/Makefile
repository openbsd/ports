# $OpenBSD: Makefile,v 1.19 2019/07/12 20:47:35 sthen Exp $

COMMENT=		perl module to query Sender Policy Framework

DISTNAME=		Mail-SPF-Query-1.999.1
REVISION=		5
CATEGORIES=		mail

# perl
PERMIT_PACKAGE=	Yes

MODULES=		cpan
PKG_ARCH=		*
MODCPAN_EXAMPLES=	Yes

RUN_DEPENDS=		net/p5-Net-CIDR-Lite>=0.15 \
			net/p5-Net-DNS>=0.46 \
			net/p5-Sys-Hostname-Long \
			www/p5-URI

BUILD_DEPENDS=		${RUN_DEPENDS}

.include <bsd.port.mk>
