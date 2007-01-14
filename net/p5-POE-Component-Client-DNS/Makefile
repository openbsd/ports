# $OpenBSD: Makefile,v 1.4 2007/01/14 20:49:06 simon Exp $

COMMENT=	"DNS module for the Perl Object Environment"

MODULES=	cpan
DISTNAME=	POE-Component-Client-DNS-0.99
CATEGORIES=	net

MAINTAINER=	Mathieu Sauve-Frankel <msf@openbsd.org>

# Artistic/GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

BUILD_DEPENDS=	${RUN_DEPENDS}
RUN_DEPENDS=	::devel/p5-POE \
		::net/p5-Net-DNS

.include <bsd.port.mk>
