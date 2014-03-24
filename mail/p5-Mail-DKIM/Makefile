# $OpenBSD: Makefile,v 1.16 2014/03/24 07:47:23 jasper Exp $

COMMENT=	DKIM and DomainKeys message-signing implementation

DISTNAME=	Mail-DKIM-0.40
CATEGORIES=	mail

MAINTAINER=	William Yodlowsky <william@openbsd.org>

# Perl
PERMIT_PACKAGE_CDROM=	Yes

MODULES=	cpan
CPAN_AUTHOR=	JASLONG

RUN_DEPENDS=	security/p5-Crypt-OpenSSL-RSA \
		mail/p5-Mail-Tools \
		net/p5-Net-DNS

MODCPAN_EXAMPLES=	Yes

post-install:
	${INSTALL_DATA_DIR} ${MODCPAN_EXAMPLES_DIR}
	${INSTALL_SCRIPT} ${WRKSRC}/sample_mime_lite.pl ${MODCPAN_EXAMPLES_DIR}/sample_mime_lite.pl

.include <bsd.port.mk>
