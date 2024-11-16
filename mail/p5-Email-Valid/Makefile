COMMENT=	check validity of Internet email addresses

MODULES=	cpan
PKG_ARCH=	*
DISTNAME =	Email-Valid-1.204
CATEGORIES=	mail

# perl
PERMIT_PACKAGE=	Yes

RUN_DEPENDS=	mail/p5-Mail-Tools>=1.67 \
		sysutils/p5-Capture-Tiny \
		net/p5-Net-Domain-TLD>=1.65 \
		net/p5-Net-DNS

MAKE_ENV=		TEST_POD=Yes

.include <bsd.port.mk>
