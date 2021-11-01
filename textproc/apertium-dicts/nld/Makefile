# $OpenBSD: Makefile,v 1.1.1.1 2021/11/01 10:06:59 bentley Exp $

L =	nld
LANG =	Dutch
V =	0.2.0

USE_GMAKE =	Yes

MASTER_SITES =	https://github.com/apertium/apertium-$L/releases/download/v$V/

BUILD_DEPENDS +=	textproc/vislcg3

AUTOCONF_VERSION =	2.71
AUTOMAKE_VERSION =	1.16

CONFIGURE_STYLE =	autoreconf

.include <bsd.port.mk>
