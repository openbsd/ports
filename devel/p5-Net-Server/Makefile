# $OpenBSD: Makefile,v 1.12 2007/11/04 16:27:53 merdely Exp $

COMMENT=	extensible framework for Perl server engines

MODULES=	cpan
DISTNAME=	Net-Server-0.97
CATEGORIES=	devel net

HOMEPAGE=	http://seamons.com/net_server.html

MAINTAINER=	Michael Erdely <merdely@openbsd.org>

# perl
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

REGRESS_DEPENDS=	::devel/p5-IO-Multiplex

.include <bsd.port.mk>
