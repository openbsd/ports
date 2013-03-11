# $OpenBSD: Makefile,v 1.8 2013/03/11 11:35:54 espie Exp $

COMMENT=	manage connections, with keep-alive

MODULES=	cpan
DISTNAME=	POE-Component-Client-Keepalive-0.25
REVISION=	0
EPOCH=		0
CATEGORIES=	net
USE_GROFF =	Yes

MAINTAINER=	Simon Bertrang <simon@openbsd.org>

# Perl
PERMIT_PACKAGE_CDROM=	Yes

RUN_DEPENDS=	devel/p5-POE \
		net/p5-POE-Component-Client-DNS

.include <bsd.port.mk>
