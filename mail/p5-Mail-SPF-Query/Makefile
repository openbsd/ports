# $OpenBSD: Makefile,v 1.7 2008/10/22 12:29:31 jasper Exp $

COMMENT=		perl module to query Sender Policy Framework

DISTNAME=		Mail-SPF-Query-1.999.1
PKGNAME=		p5-${DISTNAME}p1
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
