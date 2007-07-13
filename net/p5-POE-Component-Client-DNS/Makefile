# $OpenBSD: Makefile,v 1.5 2007/07/13 16:20:23 jasper Exp $

COMMENT=	DNS module for the Perl Object Environment

MODULES=	cpan
DISTNAME=	POE-Component-Client-DNS-1.00
CATEGORIES=	net

# Artistic/GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

BUILD_DEPENDS=	${RUN_DEPENDS}
RUN_DEPENDS=	::devel/p5-POE \
		::net/p5-Net-DNS

.include <bsd.port.mk>
