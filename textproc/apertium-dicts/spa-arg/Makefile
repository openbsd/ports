# $OpenBSD: Makefile,v 1.4 2021/11/15 04:25:00 bentley Exp $

L =	spa-arg
LANG =	Spanish/Aragonese
V =	0.5.0

EXTRACT_SUFX =	.tar.bz2

BUILD_DEPENDS +=	textproc/apertium-dicts/arg \
			textproc/apertium-dicts/spa \
			textproc/apertium-lex-tools \
			textproc/vislcg3

USE_GMAKE =	Yes

AUTOCONF_VERSION =	2.71
AUTOMAKE_VERSION =	1.16

CONFIGURE_STYLE =	autoreconf

.include <bsd.port.mk>
