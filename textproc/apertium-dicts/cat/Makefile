# $OpenBSD: Makefile,v 1.10 2021/11/15 04:24:56 bentley Exp $

L =	cat
LANG =	Catalan
V =	2.10.2

EXTRACT_SUFX =	.tar.bz2

BUILD_DEPENDS +=	textproc/vislcg3
MODULES =		lang/python
MODPY_RUNDEP =		No

USE_GMAKE =	Yes

AUTOCONF_VERSION =	2.71
AUTOMAKE_VERSION =	1.16

CONFIGURE_STYLE =	autoreconf

.include <bsd.port.mk>
