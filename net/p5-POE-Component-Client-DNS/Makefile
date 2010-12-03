# $OpenBSD: Makefile,v 1.11 2010/12/03 11:45:43 ajacoutot Exp $

COMMENT=	DNS module for the Perl Object Environment

MODULES=	cpan
DISTNAME=	POE-Component-Client-DNS-1.03
REVISION=	0
CATEGORIES=	net
USE_GROFF =	Yes

# perl
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

RUN_DEPENDS=	devel/p5-POE \
		net/p5-Net-DNS

.include <bsd.port.mk>
