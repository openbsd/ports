# $OpenBSD: Makefile,v 1.1.1.1 2021/11/02 07:40:36 bentley Exp $

L =	isl-eng
LANG =	Icelandic/English
V =	0.1.1

EXTRACT_SUFX =	.tar.bz2

BUILD_DEPENDS +=	textproc/apertium-dicts/isl \
			textproc/vislcg3

USE_GMAKE =	Yes

AUTOCONF_VERSION =	2.71
AUTOMAKE_VERSION =	1.16

CONFIGURE_STYLE =	autoreconf

.include <bsd.port.mk>
