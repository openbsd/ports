# $OpenBSD: Makefile,v 1.1.1.1 2011/09/21 07:56:16 giovanni Exp $

COMMENT =		programmable DNS resolver class for offline emulation of DNS

DISTNAME =		Net-DNS-Resolver-Programmable-v0.003
PKGNAME =		p5-${DISTNAME:S/-v/-/}
CATEGORIES =		net

# perl
PERMIT_PACKAGE_CDROM =	Yes
PERMIT_PACKAGE_FTP =	Yes
PERMIT_DISTFILES_CDROM =Yes
PERMIT_DISTFILES_FTP =	Yes

MODULES =		cpan

RUN_DEPENDS =		net/p5-Net-DNS

do-install:
	cd ${WRKSRC} && ./Build --prefix=${PREFIX} --create_packlist=0 install

.include <bsd.port.mk>
