# $OpenBSD: Makefile,v 1.27 2014/07/12 16:13:24 giovanni Exp $

COMMENT=	extension for unparsed raw whois information

DISTNAME=	Net-Whois-Raw-2.76
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
