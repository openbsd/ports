# $OpenBSD: Makefile,v 1.2 2009/08/05 15:04:03 giovanni Exp $

COMMENT= 	fast lookup of country codes by IP address

MODULES=	cpan
DISTNAME=	IP-Country-2.27
CATEGORIES=	net

MAINTAINER=	Michael Erdely <merdely@openbsd.org>

# Artistic
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

RUN_DEPENDS =		::geo/p5-Geography-Countries

.include <bsd.port.mk>
