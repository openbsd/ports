# $OpenBSD: Makefile,v 1.1.1.1 2007/07/22 16:10:18 simon Exp $

COMMENT=	manage connections, with keep-alive

MODULES=	cpan
DISTNAME=	POE-Component-Client-Keepalive-0.1000
CATEGORIES=	net

MAINTAINER=	Simon Bertrang <simon@openbsd.org>

# Perl
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

RUN_DEPENDS=	::devel/p5-POE \
		::net/p5-POE-Component-Client-DNS

.include <bsd.port.mk>
