# $OpenBSD: Makefile,v 1.7 2020/03/20 16:44:28 naddy Exp $

COMMENT =	HTTP Style Messages

DISTNAME =	HTTP-Message-6.13
CATEGORIES =	www

MAINTAINER =	Nigel Taylor <nigel@openbsd.org>

# Perl
PERMIT_PACKAGE =	Yes

MODULES =	cpan
PKG_ARCH =	*

RUN_DEPENDS =	textproc/p5-Encode-Locale>=1.00 \
		www/p5-IO-HTML \
		www/p5-HTTP-Date>=6.00 \
		www/p5-LWP-MediaTypes>=6.00 \
		www/p5-URI>=1.10

TEST_DEPENDS =	devel/p5-Try-Tiny

post-build:
		@find ${WRKSRC}/blib \( -name "*.orig" -o -name "*.rej" \) -delete

.include <bsd.port.mk>
