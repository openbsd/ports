# $OpenBSD: Makefile,v 1.17 2009/02/14 08:44:05 jasper Exp $

COMMENT=	extension for unparsed raw whois information

DISTNAME=	Net-Whois-Raw-1.63
CATEGORIES=	net

# perl
PERMIT_PACKAGE_CDROM=   Yes
PERMIT_PACKAGE_FTP=     Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=   Yes

MODULES=		cpan

CONFIGURE_STYLE=	modbuild

RUN_DEPENDS=	::www/p5-URI \
		::www/p5-libwww

.include <bsd.port.mk>
