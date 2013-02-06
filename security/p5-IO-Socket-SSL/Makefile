# $OpenBSD: Makefile,v 1.51 2013/02/06 23:38:11 bluhm Exp $

COMMENT =		perl interface to SSL sockets

DISTNAME =		IO-Socket-SSL-1.83

CATEGORIES =		security

MAINTAINER =		Alexander Bluhm <bluhm@openbsd.org>

# perl
PERMIT_PACKAGE_CDROM =	Yes
PERMIT_PACKAGE_FTP =	Yes
PERMIT_DISTFILES_CDROM =Yes
PERMIT_DISTFILES_FTP =	Yes

MODULES =		cpan
BUILD_DEPENDS =		${RUN_DEPENDS}
RUN_DEPENDS =		security/p5-Net_SSLeay>=1.33
REGRESS_DEPENDS =	net/p5-IO-Socket-INET6 \
			converters/p5-Net-IDN-Encode \
			www/p5-URI>=1.50

MODCPAN_EXAMPLES =	Yes
MODCPAN_EXAMPLES_DIST =	example

.include <bsd.port.mk>
