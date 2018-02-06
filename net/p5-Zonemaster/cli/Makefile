# $OpenBSD: Makefile,v 1.7 2018/02/06 21:55:39 sthen Exp $

PKG_ARCH =	*

COMMENT =	tool to check the quality of a DNS zone

MODULES =	cpan
CPAN_AUTHOR =	ZNMSTR
V =		1.1.2
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
			net/p5-Zonemaster/engine>=2.0.0 \
			textproc/p5-Text-Reflow

.include <bsd.port.mk>
