# $OpenBSD: Makefile,v 1.9 2010/07/13 20:14:21 sthen Exp $

COMMENT=		perl module to query Sender Policy Framework

DISTNAME=		Mail-SPF-Query-1.999.1
REVISION=		2
CATEGORIES=		mail

MAINTAINER=		Michael Erdely <merdely@openbsd.org>

# GPL/Artistic
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MODULES=		cpan

RUN_DEPENDS=		:p5-Net-CIDR-Lite->=0.15:net/p5-Net-CIDR-Lite \
			:p5-Net-DNS->=0.46:net/p5-Net-DNS \
			:p5-Sys-Hostname-Long-*:net/p5-Sys-Hostname-Long \
			:p5-URI-*:www/p5-URI

BUILD_DEPENDS=		${RUN_DEPENDS}

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/p5-Mail-SPF-Query
	${INSTALL_DATA} ${WRKSRC}/examples/* \
		${PREFIX}/share/examples/p5-Mail-SPF-Query

.include <bsd.port.mk>
