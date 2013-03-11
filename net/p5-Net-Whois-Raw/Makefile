# $OpenBSD: Makefile,v 1.24 2013/03/11 11:35:53 espie Exp $

COMMENT=	extension for unparsed raw whois information

DISTNAME=	Net-Whois-Raw-2.37
CATEGORIES=	net

# perl
PERMIT_PACKAGE_CDROM=   Yes

MODULES=		cpan

CONFIGURE_STYLE=	modbuild

BUILD_DEPENDS=		${RUN_DEPENDS}
RUN_DEPENDS=		converters/p5-Net-IDN-Encode \
			www/p5-libwww

.include <bsd.port.mk>
