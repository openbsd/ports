# $OpenBSD: Makefile,v 1.4 2010/10/18 18:36:55 espie Exp $

COMMENT=	manage connections, with keep-alive

MODULES=	cpan
DISTNAME=	POE-Component-Client-Keepalive-0.25
CATEGORIES=	net
USE_GROFF =	Yes

MAINTAINER=	Simon Bertrang <simon@openbsd.org>

# Perl
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

RUN_DEPENDS=	::devel/p5-POE \
		::net/p5-POE-Component-Client-DNS

.include <bsd.port.mk>
