COMMENT=	extension for unparsed raw whois information

DISTNAME=	Net-Whois-Raw-2.99037
CATEGORIES=	net

MAINTAINER=	Giovanni Bechis <giovanni@openbsd.org>

# perl
PERMIT_PACKAGE=	Yes

MODULES=		cpan
PKG_ARCH=		*

BUILD_DEPENDS=		${RUN_DEPENDS}
RUN_DEPENDS=		converters/p5-Net-IDN-Encode \
			devel/p5-Regexp-IPv6 \
			www/p5-libwww
TEST_DEPENDS=		devel/p5-Test-RequiresInternet

.include <bsd.port.mk>
