# $OpenBSD: Makefile,v 1.2 2021/02/23 19:39:22 sthen Exp $

PKG_ARCH =		*

COMMENT =		data files for colobot

DISTNAME =		colobot-data-$V

CATEGORIES =		games

GH_PROJECT =		colobot-data

MODULES =		devel/cmake \
			lang/python
MODPY_VERSION =	${MODPY_DEFAULT_VERSION_2}
MODPY_SETUPUTILS =	No
MODPY_RUNDEP =		No

CONFIGURE_ARGS +=	-DMUSIC:=OFF
CONFIGURE_STYLE =	cmake

NO_TEST =		Yes

.include <bsd.port.mk>
