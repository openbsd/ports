# $OpenBSD: Makefile,v 1.4 2021/11/15 04:25:01 bentley Exp $

L =	srd
LANG =	Sardinian
V =	1.3.1

BUILD_DEPENDS +=	textproc/vislcg3
MODULES =		lang/python
MODPY_RUNDEP =		No

USE_GMAKE =	Yes

EXTRACT_SUFX =	.tar.bz2

AUTOCONF_VERSION =	2.71
AUTOMAKE_VERSION =	1.16

CONFIGURE_STYLE =	autoreconf

.include <bsd.port.mk>
