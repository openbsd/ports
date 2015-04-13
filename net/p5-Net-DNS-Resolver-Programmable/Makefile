# $OpenBSD: Makefile,v 1.3 2015/04/13 16:22:50 sthen Exp $

COMMENT =		programmable DNS resolver class for offline emulation of DNS

DISTNAME =		Net-DNS-Resolver-Programmable-v0.003
REVISION =		0
PKGNAME =		p5-${DISTNAME:S/-v/-/}
CATEGORIES =		net

# perl
PERMIT_PACKAGE_CDROM =	Yes

MODULES =		cpan
CONFIGURE_STYLE =	modbuild

RUN_DEPENDS =		net/p5-Net-DNS

.include <bsd.port.mk>
