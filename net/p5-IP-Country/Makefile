# $OpenBSD: Makefile,v 1.1.1.1 2009/07/20 13:59:20 merdely Exp $

COMMENT= 	fast lookup of country codes by IP address

MODULES=	cpan
DISTNAME=	IP-Country-2.26
CATEGORIES=	net

MAINTAINER=	Michael Erdely <merdely@openbsd.org>

# Artistic
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

RUN_DEPENDS =		::geo/p5-Geography-Countries

.include <bsd.port.mk>
