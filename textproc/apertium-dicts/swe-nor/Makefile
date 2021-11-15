# $OpenBSD: Makefile,v 1.2 2021/11/15 04:25:01 bentley Exp $

L =	swe-nor
LANG =	Swedish/Norwegian
V =	0.3.1

BUILD_DEPENDS +=	textproc/apertium-dicts/nno \
			textproc/apertium-dicts/nob \
			textproc/apertium-dicts/swe \
			textproc/apertium-lex-tools \
			textproc/vislcg3

USE_GMAKE =	Yes

AUTOCONF_VERSION =	2.71
AUTOMAKE_VERSION =	1.16

CONFIGURE_STYLE =	autoreconf

.include <bsd.port.mk>
