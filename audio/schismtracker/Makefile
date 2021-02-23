# $OpenBSD: Makefile,v 1.24 2021/02/23 19:39:09 sthen Exp $

COMMENT =	open-source reimplementation of Impulse Tracker

V =		20200412
DISTNAME =	schismtracker-${V}.source
PKGNAME =	schismtracker-${V}

CATEGORIES =	audio x11

HOMEPAGE =	http://schismtracker.org/

# GPLv2+
PERMIT_PACKAGE =	Yes

WANTLIB +=	SDL X11 Xext Xv c m pthread

MASTER_SITES =	https://github.com/schismtracker/schismtracker/releases/download/$V/

MODULES =	lang/python
MODPY_VERSION =	${MODPY_DEFAULT_VERSION_2}

MODPY_RUNDEP =	No

RUN_DEPENDS =	devel/desktop-file-utils

LIB_DEPENDS =	devel/sdl

CONFIGURE_STYLE =	autoreconf
AUTOCONF_VERSION =	2.69
AUTOMAKE_VERSION =	1.15

WRKDIST =	${WRKDIR}/schismtracker

.include <bsd.port.mk>
