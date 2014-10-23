# $OpenBSD: Makefile,v 1.1.1.1 2014/10/23 19:27:39 nigel Exp $

COMMENT =	HTTP Style Messages

DISTNAME =	HTTP-Message-6.06
CATEGORIES =	www
CPAN_AUTHOR =	GAAS

MAINTAINER =	Nigel Taylor <nigel@openbsd.org>

# Perl
PERMIT_PACKAGE_CDROM =	Yes

MODULES =	cpan

RUN_DEPENDS =	textproc/p5-Encode-Locale \
		www/p5-IO-HTML \
		www/p5-HTTP-Date>=6.0 \
		www/p5-LWP-MediaTypes>=6.00 \
		www/p5-URI>=1.10

BUILD_DEPENDS =	${RUN_DEPENDS}

.include <bsd.port.mk>
