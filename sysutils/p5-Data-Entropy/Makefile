# $OpenBSD: Makefile,v 1.1.1.1 2021/04/28 15:55:16 tracey Exp $

COMMENT =	entropy (randomness) management

DISTNAME =	Data-Entropy-0.007

CATEGORIES =	sysutils

# Perl
PERMIT_PACKAGE =	Yes

MODULES =		cpan

BUILD_DEPENDS =	security/p5-Crypt-Rijndael \
		sysutils/p5-Data-Float>=0.008
RUN_DEPENDS =		devel/p5-Params-Classify \
			security/p5-Crypt-Rijndael \
			sysutils/p5-Data-Float>=0.008 \
			www/p5-HTTP-Lite>=2.2

CONFIGURE_STYLE =	modbuild

PKG_ARCH =		*

.include <bsd.port.mk>
