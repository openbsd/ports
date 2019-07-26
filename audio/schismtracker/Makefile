# $OpenBSD: Makefile,v 1.20 2019/07/26 13:51:31 fcambus Exp $

COMMENT =	open-source reimplementation of Impulse Tracker

V =		20190722
DISTNAME =	schismtracker-${V}.source
PKGNAME =	schismtracker-${V}

CATEGORIES =	audio x11

HOMEPAGE =	http://schismtracker.org/

MAINTAINER =	Frederic Cambus <fcambus@openbsd.org>

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
