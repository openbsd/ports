# $OpenBSD: Makefile,v 1.6 2021/11/15 04:24:56 bentley Exp $

L =	cat-srd
LANG =	Catalan/Sardinian
V =	1.1.0

EXTRACT_SUFX =	.tar.bz2

BUILD_DEPENDS +=	textproc/apertium-dicts/cat \
			textproc/apertium-dicts/srd \
			textproc/apertium-lex-tools \
			textproc/vislcg3

USE_GMAKE =	Yes

AUTOCONF_VERSION =	2.71
AUTOMAKE_VERSION =	1.16

CONFIGURE_STYLE =	autoreconf

.include <bsd.port.mk>
