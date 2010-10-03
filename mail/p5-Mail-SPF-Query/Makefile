# $OpenBSD: Makefile,v 1.10 2010/10/03 15:27:39 jasper Exp $

COMMENT=		perl module to query Sender Policy Framework

DISTNAME=		Mail-SPF-Query-1.999.1
REVISION=		2
CATEGORIES=		mail

MAINTAINER=		Michael Erdely <merdely@openbsd.org>

# perl
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MODULES=		cpan
MODCPAN_EXAMPLES=	Yes

RUN_DEPENDS=		:p5-Net-CIDR-Lite->=0.15:net/p5-Net-CIDR-Lite \
			:p5-Net-DNS->=0.46:net/p5-Net-DNS \
			:p5-Sys-Hostname-Long-*:net/p5-Sys-Hostname-Long \
			:p5-URI-*:www/p5-URI

BUILD_DEPENDS=		${RUN_DEPENDS}

.include <bsd.port.mk>
