# $OpenBSD: Makefile,v 1.44 2020/07/03 21:45:36 sthen Exp $

COMMENT=	extension for unparsed raw whois information

DISTNAME=	Net-Whois-Raw-2.99026
CATEGORIES=	net
REVISION=	0

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
