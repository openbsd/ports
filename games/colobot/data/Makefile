# $OpenBSD: Makefile,v 1.1.1.1 2018/09/25 08:53:04 bentley Exp $

PKG_ARCH =		*

COMMENT =		data files for colobot

DISTNAME =		colobot-data-$V

CATEGORIES =		games

GH_PROJECT =		colobot-data

MODULES =		devel/cmake \
			lang/python
MODPY_SETUPUTILS =	No
MODPY_RUNDEP =		No

CONFIGURE_ARGS +=	-DMUSIC:=OFF
CONFIGURE_STYLE =	cmake

NO_TEST =		Yes

.include <bsd.port.mk>
