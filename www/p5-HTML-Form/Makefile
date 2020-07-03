# $OpenBSD: Makefile,v 1.4 2020/07/03 21:46:00 sthen Exp $

COMMENT =	Class that represents an HTML form element

DISTNAME =	HTML-Form-6.03
CATEGORIES =	www
CPAN_AUTHOR =	GAAS
REVISION =	0

MAINTAINER =	Nigel Taylor <nigel@openbsd.org>

# Perl
PERMIT_PACKAGE =	Yes

MODULES =	cpan
PKG_ARCH =	*

RUN_DEPENDS =	www/p5-HTML-Parser \
		www/p5-HTTP-Message>=6.03 \
		www/p5-URI>=1.10

BUILD_DEPENDS =	${RUN_DEPENDS}

.include <bsd.port.mk>
