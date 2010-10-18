# $OpenBSD: Makefile,v 1.20 2010/10/18 18:36:55 espie Exp $

COMMENT=	extension for unparsed raw whois information

DISTNAME=	Net-Whois-Raw-2.00
CATEGORIES=	net

# perl
PERMIT_PACKAGE_CDROM=   Yes
PERMIT_PACKAGE_FTP=     Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=   Yes

MODULES=		cpan

CONFIGURE_STYLE=	modbuild
USE_GROFF =	Yes

BUILD_DEPENDS=		${RUN_DEPENDS}
RUN_DEPENDS=		::www/p5-URI \
			::www/p5-libwww

.include <bsd.port.mk>
