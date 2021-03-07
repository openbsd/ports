# $OpenBSD: Makefile,v 1.3 2021/03/07 01:28:21 daniel Exp $

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
