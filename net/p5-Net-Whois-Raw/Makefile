# $OpenBSD: Makefile,v 1.14 2008/09/24 16:19:14 jasper Exp $

COMMENT=	extension for unparsed raw whois information

DISTNAME=	Net-Whois-Raw-1.57
CATEGORIES=	net

# perl
PERMIT_PACKAGE_CDROM=   Yes
PERMIT_PACKAGE_FTP=     Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=   Yes

MODULES=	cpan

BUILD_DEPENDS=	${RUN_DEPENDS}
RUN_DEPENDS=	::www/p5-URI \
		::www/p5-libwww

.include <bsd.port.mk>
