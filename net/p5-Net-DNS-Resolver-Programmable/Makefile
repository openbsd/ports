# $OpenBSD: Makefile,v 1.2 2013/03/11 11:35:52 espie Exp $

COMMENT =		programmable DNS resolver class for offline emulation of DNS

DISTNAME =		Net-DNS-Resolver-Programmable-v0.003
PKGNAME =		p5-${DISTNAME:S/-v/-/}
CATEGORIES =		net

# perl
PERMIT_PACKAGE_CDROM =	Yes

MODULES =		cpan

RUN_DEPENDS =		net/p5-Net-DNS

do-install:
	cd ${WRKSRC} && ./Build --prefix=${PREFIX} --create_packlist=0 install

.include <bsd.port.mk>
