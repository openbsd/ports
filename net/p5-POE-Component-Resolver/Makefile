# $OpenBSD: Makefile,v 1.1.1.1 2011/05/11 18:59:59 jasper Exp $

COMMENT =		non-blocking getaddrinfo() resolver

DISTNAME =		POE-Component-Resolver-0.912
CATEGORIES =		net

# GPLv2
PERMIT_PACKAGE_CDROM =	Yes
PERMIT_PACKAGE_FTP =	Yes
PERMIT_DISTFILES_CDROM =Yes
PERMIT_DISTFILES_FTP =	Yes

MODULES =		cpan

RUN_DEPENDS =		devel/p5-POE>=1.311 \
			net/p5-Socket-GetAddrInfo>=0.19

.include <bsd.port.mk>
