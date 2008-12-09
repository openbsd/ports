# $OpenBSD: Makefile,v 1.1.1.1 2008/12/09 21:04:48 bluhm Exp $

COMMENT =		iterative SPF lookup

DISTNAME =		Mail-SPF-Iterator-1.02

CATEGORIES =		mail

MAINTAINER =		Alexander Bluhm <bluhm@openbsd.org>

# perl
PERMIT_PACKAGE_CDROM =	Yes
PERMIT_PACKAGE_FTP =	Yes
PERMIT_DISTFILES_CDROM =Yes
PERMIT_DISTFILES_FTP =	Yes

MODULES =		cpan
BUILD_DEPENDS =		${RUN_DEPENDS}
RUN_DEPENDS =		:p5-Net-DNS->=0.62:net/p5-Net-DNS ::www/p5-URI
REGRESS_DEPENDS =	::net/p5-Socket6 ::net/p5-IO-INET6

.include <bsd.port.mk>
