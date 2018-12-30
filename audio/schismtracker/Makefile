# $OpenBSD: Makefile,v 1.16 2018/12/30 11:28:20 fcambus Exp $

COMMENT =	open-source reimplementation of Impulse Tracker

V =		20181223
DISTNAME =	schismtracker-${V}.source
PKGNAME =	schismtracker-${V}

CATEGORIES =	audio x11

HOMEPAGE =	http://schismtracker.org/

MAINTAINER =	Frederic Cambus <fcambus@openbsd.org>

# GPLv2+
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB +=	SDL X11 Xext Xv c m pthread

MASTER_SITES =	https://github.com/schismtracker/schismtracker/releases/download/$V/

MODULES =	lang/python

MODPY_RUNDEP =	No

RUN_DEPENDS =	devel/desktop-file-utils

BUILD_DEPENDS =	${MODGNU_AUTOCONF_DEPENDS} \
		${MODGNU_AUTOMAKE_DEPENDS}

LIB_DEPENDS =	devel/sdl

CONFIGURE_STYLE =	gnu
AUTOCONF_VERSION =	2.69
AUTOMAKE_VERSION =	1.15

WRKDIST =	${WRKDIR}/schismtracker

pre-configure:
	@cd ${WRKSRC} && ${AUTOCONF_ENV} autoreconf -i

.include <bsd.port.mk>
