# $OpenBSD: Makefile,v 1.7 2021/11/15 04:24:55 bentley Exp $

L =	arg-cat
LANG =	Aragonese/Catalan
V =	0.2.0

EXTRACT_SUFX =	.tar.bz2

BUILD_DEPENDS +=	textproc/apertium-dicts/arg \
			textproc/apertium-dicts/cat \
			textproc/apertium-lex-tools \
			textproc/vislcg3

USE_GMAKE =	Yes

AUTOCONF_VERSION =	2.71
AUTOMAKE_VERSION =	1.16

CONFIGURE_STYLE =	autoreconf

.include <bsd.port.mk>
