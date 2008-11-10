# $OpenBSD: Makefile,v 1.15 2008/11/10 11:16:17 jasper Exp $

COMMENT=	extension for unparsed raw whois information

DISTNAME=	Net-Whois-Raw-1.58
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
