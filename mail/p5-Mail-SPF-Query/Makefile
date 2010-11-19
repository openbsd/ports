# $OpenBSD: Makefile,v 1.12 2010/11/19 07:23:08 espie Exp $

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
USE_GROFF =		Yes

RUN_DEPENDS=		net/p5-Net-CIDR-Lite>=0.15 \
			net/p5-Net-DNS>=0.46 \
			net/p5-Sys-Hostname-Long \
			www/p5-URI

BUILD_DEPENDS=		${RUN_DEPENDS}

.include <bsd.port.mk>
