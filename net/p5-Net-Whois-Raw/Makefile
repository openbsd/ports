# $OpenBSD: Makefile,v 1.36 2016/09/03 15:19:51 giovanni Exp $

COMMENT=	extension for unparsed raw whois information

DISTNAME =	Net-Whois-Raw-2.99001
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
