# $OpenBSD: Makefile,v 1.21 2019/03/07 07:29:45 giovanni Exp $

COMMENT=	DKIM and DomainKeys message-signing implementation

DISTNAME=	Mail-DKIM-0.54
CATEGORIES=	mail

# Perl
PERMIT_PACKAGE_CDROM=	Yes

MODULES=	cpan
PKG_ARCH=	*

RUN_DEPENDS=	security/p5-Crypt-OpenSSL-RSA \
		mail/p5-Mail-Tools \
		net/p5-Net-DNS

TEST_DEPENDS=	devel/p5-Test-RequiresInternet \
		devel/p5-YAML-XS \
		net/p5-Net-DNS-Resolver-Mock

MODCPAN_EXAMPLES=      Yes

post-install:
	${INSTALL_DATA_DIR} ${MODCPAN_EXAMPLES_DIR}
	${INSTALL_SCRIPT} ${WRKSRC}/scripts/*.pl ${MODCPAN_EXAMPLES_DIR}/

.include <bsd.port.mk>
