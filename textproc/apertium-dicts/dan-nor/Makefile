# $OpenBSD: Makefile,v 1.8 2021/11/15 04:24:56 bentley Exp $

L =	dan-nor
LANG =	Danish/Norwegian
V =	1.4.1

BUILD_DEPENDS +=	textproc/apertium-dicts/dan \
			textproc/apertium-dicts/nno \
			textproc/apertium-dicts/nob \
			textproc/apertium-lex-tools \
			textproc/vislcg3

USE_GMAKE =	Yes

AUTOCONF_VERSION =	2.71
AUTOMAKE_VERSION =	1.16

CONFIGURE_STYLE =	autoreconf

.include <bsd.port.mk>
