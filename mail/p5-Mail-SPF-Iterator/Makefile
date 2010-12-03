# $OpenBSD: Makefile,v 1.11 2010/12/03 11:45:39 ajacoutot Exp $

COMMENT =		iterative SPF lookup

DISTNAME =		Mail-SPF-Iterator-1.08
REVISION =		0

CATEGORIES =		mail

MAINTAINER =		Alexander Bluhm <bluhm@openbsd.org>

# perl
PERMIT_PACKAGE_CDROM =	Yes
PERMIT_PACKAGE_FTP =	Yes
PERMIT_DISTFILES_CDROM =Yes
PERMIT_DISTFILES_FTP =	Yes

MODULES =		cpan
USE_GROFF =		Yes
BUILD_DEPENDS =		${RUN_DEPENDS}
RUN_DEPENDS =		net/p5-Net-DNS>=0.62 \
			www/p5-URI
REGRESS_DEPENDS =	net/p5-IO-Socket-INET6 \
			net/p5-Socket6

post-install:
	${INSTALL_SCRIPT} ${WRKSRC}/samples/spflookup.pl ${PREFIX}/bin/spflookup

.include <bsd.port.mk>
