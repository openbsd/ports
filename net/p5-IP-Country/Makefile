# $OpenBSD: Makefile,v 1.5 2010/12/03 11:45:41 ajacoutot Exp $

COMMENT= 	fast lookup of country codes by IP address

MODULES=	cpan
DISTNAME=	IP-Country-2.27
REVISION=	0
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
