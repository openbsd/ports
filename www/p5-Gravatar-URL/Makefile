# $OpenBSD: Makefile,v 1.5 2016/08/12 22:53:35 bluhm Exp $

COMMENT =		make URLs for Gravatars from an email address

DISTNAME =		Gravatar-URL-1.07

CATEGORIES =		www mail

MAINTAINER =		Alexander Bluhm <bluhm@openbsd.org>

# Perl
PERMIT_PACKAGE_CDROM =	Yes

CPAN_AUTHOR =		MSCHWERN

MODULES =		cpan
PKG_ARCH =		*
RUN_DEPENDS =		net/p5-Net-DNS>=1.01 \
			www/p5-URI
TEST_DEPENDS =		devel/p5-Test-Warn \
			devel/p5-Test-MockRandom

CONFIGURE_STYLE =	modbuild

.include <bsd.port.mk>
