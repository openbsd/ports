# $OpenBSD: Makefile,v 1.1.1.1 2011/04/06 11:53:39 jasper Exp $

COMMENT=	base-class for a tcpdump-like implementation

MODULES=	cpan
DISTNAME=	Net-Frame-Dump-1.09
CATEGORIES=	net

MAINTAINER=	Gleydson Soares <gsoares@trusted.com.br>

# Artistic
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

RUN_DEPENDS=	devel/p5-Class-Gomor \
		net/p5-Net-Frame \
		net/p5-Net-Pcap
BUILD_DEPENDS=	${RUN_DEPENDS}

MODCPAN_EXAMPLES=	Yes

.include <bsd.port.mk>
