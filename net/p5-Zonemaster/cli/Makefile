# $OpenBSD: Makefile,v 1.6 2018/02/05 01:08:17 sthen Exp $

COMMENT =	tool to check the quality of a DNS zone

MODULES =	cpan
CPAN_AUTHOR =	ZNMSTR
V =		1.0.5
DISTNAME =	Zonemaster-CLI-v$V
PKGNAME =	zonemaster-$V
CATEGORIES =	net

MAINTAINER =	Stuart Henderson <sthen@openbsd.org>

# BSD
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB =	perl

CONFIGURE_STYLE =	modinst

BUILD_DEPENDS =		${RUN_DEPENDS}

RUN_DEPENDS =		devel/p5-MooseX-Getopt \
			devel/p5-namespace-autoclean \
			net/p5-Zonemaster/engine>=0.0.4 \
			textproc/p5-Text-Reflow

.include <bsd.port.mk>
