# $OpenBSD: Makefile,v 1.8 2020/07/03 21:46:02 sthen Exp $

COMMENT =	HTTP Style Messages

DISTNAME =	HTTP-Message-6.13
CATEGORIES =	www
REVISION =	0

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
