# $OpenBSD: Makefile,v 1.15 2013/03/11 11:23:52 espie Exp $

COMMENT=		perl module to query Sender Policy Framework

DISTNAME=		Mail-SPF-Query-1.999.1
REVISION=		4
CATEGORIES=		mail

MAINTAINER=		Michael Erdely <merdely@openbsd.org>

# perl
PERMIT_PACKAGE_CDROM=	Yes

MODULES=		cpan
MODCPAN_EXAMPLES=	Yes
USE_GROFF =		Yes

RUN_DEPENDS=		net/p5-Net-CIDR-Lite>=0.15 \
			net/p5-Net-DNS>=0.46 \
			net/p5-Sys-Hostname-Long \
			www/p5-URI

BUILD_DEPENDS=		${RUN_DEPENDS}

.include <bsd.port.mk>
