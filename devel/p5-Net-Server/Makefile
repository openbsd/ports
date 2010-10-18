# $OpenBSD: Makefile,v 1.13 2010/10/18 17:48:04 espie Exp $

COMMENT=	extensible framework for Perl server engines

MODULES=	cpan
DISTNAME=	Net-Server-0.97
CATEGORIES=	devel net
USE_GROFF =	Yes

HOMEPAGE=	http://seamons.com/net_server.html

MAINTAINER=	Michael Erdely <merdely@openbsd.org>

# perl
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

REGRESS_DEPENDS=	::devel/p5-IO-Multiplex

.include <bsd.port.mk>
