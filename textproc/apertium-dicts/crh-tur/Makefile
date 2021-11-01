# $OpenBSD: Makefile,v 1.4 2021/11/01 07:02:22 bentley Exp $

L =	crh-tur
LANG =	Crimean Tatar/Turkish
V =	0.3.0
REVISION =	0

EXTRACT_SUFX =	.tar.bz2

BUILD_DEPENDS +=	textproc/apertium-dicts/crh \
			textproc/apertium-dicts/tur \
			textproc/apertium-lex-tools \
			textproc/hfst \
			textproc/vislcg3

MAKE_ENV =		LC_CTYPE=en_US.UTF-8

USE_GMAKE =	Yes

AUTOCONF_VERSION =	2.71
AUTOMAKE_VERSION =	1.16

CONFIGURE_STYLE =	autoreconf

.include <bsd.port.mk>
