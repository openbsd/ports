# $OpenBSD: Makefile,v 1.23 2011/11/25 21:07:00 gsoares Exp $

COMMENT=	extension for unparsed raw whois information

DISTNAME=	Net-Whois-Raw-2.37
CATEGORIES=	net

# perl
PERMIT_PACKAGE_CDROM=   Yes
PERMIT_PACKAGE_FTP=     Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=   Yes

MODULES=		cpan

CONFIGURE_STYLE=	modbuild

BUILD_DEPENDS=		${RUN_DEPENDS}
RUN_DEPENDS=		converters/p5-Net-IDN-Encode \
			www/p5-libwww

.include <bsd.port.mk>
