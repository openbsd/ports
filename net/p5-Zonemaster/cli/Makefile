# $OpenBSD: Makefile,v 1.2 2015/10/01 12:22:10 sthen Exp $

SHARED_ONLY =	Yes

COMMENT =	tool to check the quality of a DNS zone

MODULES =	cpan
V =		1.0.2
CPAN_AUTHOR =	IIS
DISTNAME =	Zonemaster-CLI-v$V
PKGNAME =	zonemaster-$V
CATEGORIES =	net

MAINTAINER =	Florian Obser <florian+ports@narrans.de>

# BSD
PERMIT_PACKAGE_CDROM =	Yes

CONFIGURE_STYLE =	modinst

BUILD_DEPENDS =		${RUN_DEPENDS}

RUN_DEPENDS =		devel/p5-MooseX-Getopt \
			devel/p5-namespace-autoclean \
			net/p5-Zonemaster/engine>=0.0.4 \
			textproc/p5-Text-Reflow

.include <bsd.port.mk>
