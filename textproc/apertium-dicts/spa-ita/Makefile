# $OpenBSD: Makefile,v 1.3 2021/11/15 04:25:01 bentley Exp $

L =	spa-ita
LANG =	Spanish/Italian
V =	0.2.1

EXTRACT_SUFX =	.tar.bz2

BUILD_DEPENDS +=	textproc/apertium-dicts/ita \
			textproc/apertium-dicts/spa \
			textproc/apertium-lex-tools \
			textproc/vislcg3

USE_GMAKE =	Yes

AUTOCONF_VERSION =	2.71
AUTOMAKE_VERSION =	1.16

CONFIGURE_STYLE =	autoreconf

.include <bsd.port.mk>
