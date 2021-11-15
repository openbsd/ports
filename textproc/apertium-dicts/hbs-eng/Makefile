# $OpenBSD: Makefile,v 1.5 2021/11/15 04:24:58 bentley Exp $

L =	hbs-eng
LANG =	Serbo-Croatian/English
V =	0.5.1

EXTRACT_SUFX =	.tar.bz2

BUILD_DEPENDS +=	textproc/apertium-dicts/hbs \
			textproc/apertium-lex-tools \
			textproc/vislcg3

USE_GMAKE =	Yes

AUTOCONF_VERSION =	2.71
AUTOMAKE_VERSION =	1.16

CONFIGURE_STYLE =	autoreconf

.include <bsd.port.mk>
