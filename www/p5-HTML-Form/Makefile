# $OpenBSD: Makefile,v 1.2 2016/03/20 19:57:17 naddy Exp $

COMMENT =	Class that represents an HTML form element

DISTNAME =	HTML-Form-6.03
CATEGORIES =	www
CPAN_AUTHOR =	GAAS

MAINTAINER =	Nigel Taylor <nigel@openbsd.org>

# Perl
PERMIT_PACKAGE_CDROM =	Yes

MODULES =	cpan
PKG_ARCH =	*

RUN_DEPENDS =	www/p5-HTML-Parser \
		www/p5-HTTP-Message>=6.03 \
		www/p5-URI>=1.10

BUILD_DEPENDS =	${RUN_DEPENDS}

.include <bsd.port.mk>
