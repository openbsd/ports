# $OpenBSD: Makefile,v 1.22 2020/04/15 13:31:42 fcambus Exp $

COMMENT =	open-source reimplementation of Impulse Tracker

V =		20190805
DISTNAME =	schismtracker-${V}.source
PKGNAME =	schismtracker-${V}
REVISION =	0

CATEGORIES =	audio x11

HOMEPAGE =	http://schismtracker.org/

# GPLv2+
PERMIT_PACKAGE =	Yes

WANTLIB +=	SDL X11 Xext Xv c m pthread

MASTER_SITES =	https://github.com/schismtracker/schismtracker/releases/download/$V/

MODULES =	lang/python

MODPY_RUNDEP =	No

RUN_DEPENDS =	devel/desktop-file-utils

LIB_DEPENDS =	devel/sdl

CONFIGURE_STYLE =	autoreconf
AUTOCONF_VERSION =	2.69
AUTOMAKE_VERSION =	1.15

WRKDIST =	${WRKDIR}/schismtracker

.include <bsd.port.mk>
