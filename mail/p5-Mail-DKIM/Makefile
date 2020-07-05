# $OpenBSD: Makefile,v 1.25 2020/07/05 22:31:01 sthen Exp $

COMMENT=	DKIM and DomainKeys message-signing implementation

DISTNAME=	Mail-DKIM-0.58
CATEGORIES=	mail

# Perl
PERMIT_PACKAGE=	Yes

MODULES=	cpan
PKG_ARCH=	*

RUN_DEPENDS=	security/p5-Crypt-OpenSSL-RSA \
		mail/p5-Mail-Tools \
		mail/p5-Mail-AuthenticationResults>=1.20180215 \
		net/p5-Net-DNS

TEST_DEPENDS=	devel/p5-Test-RequiresInternet \
		devel/p5-YAML-XS \
		net/p5-Net-DNS-Resolver-Mock

MODCPAN_EXAMPLES=      Yes

post-install:
	${INSTALL_DATA_DIR} ${MODCPAN_EXAMPLES_DIR}
	${INSTALL_SCRIPT} ${WRKSRC}/scripts/*.pl ${MODCPAN_EXAMPLES_DIR}/

.include <bsd.port.mk>
