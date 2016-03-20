# $OpenBSD: Makefile,v 1.4 2016/03/20 19:57:17 naddy Exp $

COMMENT =		make URLs for Gravatars from an email address

DISTNAME =		Gravatar-URL-1.06
REVISION =		0

CATEGORIES =		www mail

MAINTAINER =		Alexander Bluhm <bluhm@openbsd.org>

# Perl
PERMIT_PACKAGE_CDROM =	Yes

CPAN_AUTHOR =		MSCHWERN

MODULES =		cpan
PKG_ARCH =		*
BUILD_DEPENDS =		${RUN_DEPENDS} \
			devel/p5-Test-Warn
RUN_DEPENDS =		net/p5-Net-DNS \
			www/p5-URI

CONFIGURE_STYLE =	modbuild

.include <bsd.port.mk>
