# $OpenBSD: Makefile,v 1.5 2021/11/15 04:24:58 bentley Exp $

L =	fra-cat
LANG =	French/Catalan
V =	1.9.0

EXTRACT_SUFX =	.tar.bz2

BUILD_DEPENDS +=	textproc/apertium-dicts/fra \
			textproc/apertium-dicts/cat \
			textproc/apertium-lex-tools \
			textproc/apertium-separable \
			textproc/vislcg3

USE_GMAKE =	Yes

AUTOCONF_VERSION =	2.71
AUTOMAKE_VERSION =	1.16

CONFIGURE_STYLE =	autoreconf

.include <bsd.port.mk>
