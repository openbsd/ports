# $OpenBSD: Makefile,v 1.2 2021/11/15 04:25:01 bentley Exp $

L =	swe-dan
LANG =	Swedish/Danish
V =	0.8.1

BUILD_DEPENDS +=	textproc/apertium-dicts/dan \
			textproc/apertium-dicts/swe \
			textproc/apertium-lex-tools \
			textproc/vislcg3

USE_GMAKE =	Yes

AUTOCONF_VERSION =	2.71
AUTOMAKE_VERSION =	1.16

CONFIGURE_STYLE =	autoreconf

.include <bsd.port.mk>
