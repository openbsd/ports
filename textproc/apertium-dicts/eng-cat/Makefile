# $OpenBSD: Makefile,v 1.1.1.1 2021/11/02 07:37:44 bentley Exp $

L =	eng-cat
LANG =	English/Catalan
V =	1.0.1

BROKEN =	textproc/apertium-anaphora not yet imported

BUILD_DEPENDS +=	textproc/apertium-anaphora \
			textproc/apertium-dicts/cat \
			textproc/apertium-dicts/eng \
			textproc/apertium-lex-tools \
			textproc/apertium-separable \
			textproc/vislcg3

USE_GMAKE =	Yes

AUTOCONF_VERSION =	2.71
AUTOMAKE_VERSION =	1.16

CONFIGURE_STYLE =	autoreconf

.include <bsd.port.mk>
