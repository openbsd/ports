# $OpenBSD: Makefile,v 1.4 2010/11/19 22:31:35 espie Exp $

COMMENT= 	fast lookup of country codes by IP address

MODULES=	cpan
DISTNAME=	IP-Country-2.27
CATEGORIES=	net
USE_GROFF =	Yes

MAINTAINER=	Michael Erdely <merdely@openbsd.org>

# Artistic
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

RUN_DEPENDS =		geo/p5-Geography-Countries

.include <bsd.port.mk>
