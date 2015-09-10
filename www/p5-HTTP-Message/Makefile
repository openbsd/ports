# $OpenBSD: Makefile,v 1.3 2015/09/10 20:08:40 nigel Exp $

COMMENT =	HTTP Style Messages

DISTNAME =	HTTP-Message-6.11
CATEGORIES =	www

MAINTAINER =	Nigel Taylor <nigel@openbsd.org>

# Perl
PERMIT_PACKAGE_CDROM =	Yes

MODULES =	cpan

RUN_DEPENDS =	textproc/p5-Encode-Locale>=1.00 \
		www/p5-IO-HTML \
		www/p5-HTTP-Date>=6.00 \
		www/p5-LWP-MediaTypes>=6.00 \
		www/p5-URI>=1.10

BUILD_DEPENDS =	${RUN_DEPENDS}

post-build:
		@find ${WRKSRC}/blib \( -name "*.orig" -or -name "*.rej" \) -exec rm -f {} \;

.include <bsd.port.mk>
