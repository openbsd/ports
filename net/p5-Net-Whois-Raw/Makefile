# $OpenBSD: Makefile,v 1.25 2013/11/25 14:20:23 giovanni Exp $

COMMENT=	extension for unparsed raw whois information

DISTNAME=	Net-Whois-Raw-2.48
CATEGORIES=	net

# perl
PERMIT_PACKAGE_CDROM=   Yes

MODULES=		cpan

CONFIGURE_STYLE=	modbuild

BUILD_DEPENDS=		${RUN_DEPENDS}
RUN_DEPENDS=		converters/p5-Net-IDN-Encode \
			devel/p5-Regexp-IPv6 \
			www/p5-libwww

.include <bsd.port.mk>
