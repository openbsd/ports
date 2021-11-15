# $OpenBSD: Makefile,v 1.5 2021/11/15 04:24:59 bentley Exp $

L =	nno-nob
LANG =	Norwegian Nynorsk/Bokmal
V =	1.3.0

BUILD_DEPENDS +=	textproc/apertium-dicts/nno \
			textproc/apertium-dicts/nob \
			textproc/apertium-lex-tools \
			textproc/vislcg3

USE_GMAKE =	Yes

AUTOCONF_VERSION =	2.71
AUTOMAKE_VERSION =	1.16

CONFIGURE_STYLE =	autoreconf

.include <bsd.port.mk>
