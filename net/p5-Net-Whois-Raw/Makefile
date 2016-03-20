# $OpenBSD: Makefile,v 1.34 2016/03/20 19:56:56 naddy Exp $

COMMENT=	extension for unparsed raw whois information

DISTNAME =	Net-Whois-Raw-2.92
CATEGORIES=	net

MAINTAINER=	Giovanni Bechis <giovanni@openbsd.org>

# perl
PERMIT_PACKAGE_CDROM=   Yes

MODULES=		cpan
PKG_ARCH=		*

BUILD_DEPENDS=		${RUN_DEPENDS}
RUN_DEPENDS=		converters/p5-Net-IDN-Encode \
			devel/p5-Regexp-IPv6 \
			www/p5-libwww

.include <bsd.port.mk>
