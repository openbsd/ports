# $OpenBSD: Makefile,v 1.11 2007/04/29 19:27:51 jasper Exp $

COMMENT=	"perl extension for unparsed raw whois information"

DISTNAME=	Net-Whois-Raw-1.21
CATEGORIES=	net

MAINTAINER=	Jasper Lievisse Adriaanse <jasper@openbsd.org>

# Artistic
PERMIT_PACKAGE_CDROM=   Yes
PERMIT_PACKAGE_FTP=     Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=   Yes

MODULES=	cpan

BUILD_DEPENDS=	${RUN_DEPENDS}
RUN_DEPENDS=	::www/p5-URI \
		::www/p5-libwww

.include <bsd.port.mk>
