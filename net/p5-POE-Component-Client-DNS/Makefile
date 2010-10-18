# $OpenBSD: Makefile,v 1.9 2010/10/18 18:36:55 espie Exp $

COMMENT=	DNS module for the Perl Object Environment

MODULES=	cpan
DISTNAME=	POE-Component-Client-DNS-1.03
CATEGORIES=	net
USE_GROFF =	Yes

# perl
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

RUN_DEPENDS=	::devel/p5-POE \
		::net/p5-Net-DNS

.include <bsd.port.mk>
