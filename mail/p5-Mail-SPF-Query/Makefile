# $OpenBSD: Makefile,v 1.17 2015/10/29 18:25:31 ajacoutot Exp $

COMMENT=		perl module to query Sender Policy Framework

DISTNAME=		Mail-SPF-Query-1.999.1
REVISION=		5
CATEGORIES=		mail

# perl
PERMIT_PACKAGE_CDROM=	Yes

MODULES=		cpan
MODCPAN_EXAMPLES=	Yes

RUN_DEPENDS=		net/p5-Net-CIDR-Lite>=0.15 \
			net/p5-Net-DNS>=0.46 \
			net/p5-Sys-Hostname-Long \
			www/p5-URI

BUILD_DEPENDS=		${RUN_DEPENDS}

.include <bsd.port.mk>
