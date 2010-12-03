# $OpenBSD: Makefile,v 1.22 2010/12/03 11:45:43 ajacoutot Exp $

COMMENT=	extension for unparsed raw whois information

DISTNAME=	Net-Whois-Raw-2.00
REVISION=	0
CATEGORIES=	net

# perl
PERMIT_PACKAGE_CDROM=   Yes
PERMIT_PACKAGE_FTP=     Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=   Yes

MODULES=		cpan

CONFIGURE_STYLE=	modbuild
USE_GROFF =		Yes

BUILD_DEPENDS=		${RUN_DEPENDS}
RUN_DEPENDS=		www/p5-URI \
			www/p5-libwww

.include <bsd.port.mk>
