COMMENT =	DKIM and DomainKeys message-signing implementation

DISTNAME =	Mail-DKIM-1.20200907

CATEGORIES =	mail

# Perl
PERMIT_PACKAGE =	Yes

MODULES =		cpan

RUN_DEPENDS =		mail/p5-Mail-AuthenticationResults \
			mail/p5-Mail-Tools \
			net/p5-Net-DNS \
			security/p5-Crypt-OpenSSL-RSA \

TEST_DEPENDS =		devel/p5-Test-RequiresInternet \
			devel/p5-YAML-XS \
			net/p5-Net-DNS-Resolver-Mock

PKG_ARCH =		*

MODCPAN_EXAMPLES =	Yes

post-install:
	${INSTALL_DATA_DIR} ${MODCPAN_EXAMPLES_DIR}
	${INSTALL_SCRIPT} ${WRKSRC}/scripts/*.pl ${MODCPAN_EXAMPLES_DIR}/

.include <bsd.port.mk>
