# $OpenBSD: Makefile,v 1.31 2015/05/18 17:20:32 giovanni Exp $

COMMENT=	extension for unparsed raw whois information

DISTNAME =	Net-Whois-Raw-2.84
CATEGORIES=	net

MAINTAINER=	Giovanni Bechis <giovanni@openbsd.org>

# perl
PERMIT_PACKAGE_CDROM=   Yes

MODULES=		cpan

CONFIGURE_STYLE=	modbuild

BUILD_DEPENDS=		${RUN_DEPENDS}
RUN_DEPENDS=		converters/p5-Net-IDN-Encode \
			devel/p5-Regexp-IPv6 \
			www/p5-libwww

.include <bsd.port.mk>
