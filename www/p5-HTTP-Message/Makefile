# $OpenBSD: Makefile,v 1.6 2019/07/12 20:50:55 sthen Exp $

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
		@find ${WRKSRC}/blib \( -name "*.orig" -or -name "*.rej" \) -exec rm -f {} \;

.include <bsd.port.mk>
