# $OpenBSD: Makefile,v 1.25 2021/05/28 09:12:08 fcambus Exp $

COMMENT =	open-source reimplementation of Impulse Tracker

GH_ACCOUNT =	schismtracker
GH_PROJECT =	schismtracker
GH_TAGNAME =	20210525

CATEGORIES =	audio x11

HOMEPAGE =	http://schismtracker.org/

# GPLv2+
PERMIT_PACKAGE =	Yes

WANTLIB +=	SDL X11 Xext Xv c m pthread

MODULES =	lang/python
MODPY_VERSION =	${MODPY_DEFAULT_VERSION_2}

MODPY_RUNDEP =	No

RUN_DEPENDS =	devel/desktop-file-utils

LIB_DEPENDS =	devel/sdl

CONFIGURE_STYLE =	autoreconf
AUTOCONF_VERSION =	2.69
AUTOMAKE_VERSION =	1.15

.include <bsd.port.mk>
