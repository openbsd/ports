# $OpenBSD: Makefile,v 1.2 2016/01/19 03:03:19 bentley Exp $

L =	dan-nor
LANG =	Danish/Norwegian
V =	1.1.0
REVISION =	0

USE_GMAKE =	Yes

BUILD_DEPENDS +=	textproc/apertium-dicts/dan \
			textproc/apertium-dicts/nno \
			textproc/apertium-dicts/nob \
			textproc/apertium-lex-tools \
			textproc/vislcg3

CONFIGURE_ENV =		LTTOOLBOX_CFLAGS="`pkg-config --cflags lttoolbox`" \
			LTTOOLBOX_LIBS="`pkg-config --libs lttoolbox`"

.include <bsd.port.mk>
