# $OpenBSD: Makefile,v 1.33 2016/03/04 22:25:28 giovanni Exp $

COMMENT=	extension for unparsed raw whois information

DISTNAME =	Net-Whois-Raw-2.92
CATEGORIES=	net

MAINTAINER=	Giovanni Bechis <giovanni@openbsd.org>

# perl
PERMIT_PACKAGE_CDROM=   Yes

MODULES=		cpan

BUILD_DEPENDS=		${RUN_DEPENDS}
RUN_DEPENDS=		converters/p5-Net-IDN-Encode \
			devel/p5-Regexp-IPv6 \
			www/p5-libwww

.include <bsd.port.mk>
