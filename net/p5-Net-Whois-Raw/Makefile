# $OpenBSD: Makefile,v 1.10 2006/11/19 18:43:30 jasper Exp $

COMMENT=	"perl extension for unparsed raw whois information"

DISTNAME=	Net-Whois-Raw-1.20
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
