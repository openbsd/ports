# $OpenBSD: Makefile,v 1.15 2018/08/11 05:29:25 fcambus Exp $

COMMENT =	open-source reimplementation of Impulse Tracker

GH_ACCOUNT =	schismtracker
GH_PROJECT =	schismtracker
GH_TAGNAME =	20180810

CATEGORIES =	audio x11

HOMEPAGE =	http://schismtracker.org/

MAINTAINER =	Frederic Cambus <fcambus@openbsd.org>

# GPLv2+
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB +=	SDL X11 Xext Xv c m pthread

MODULES =	lang/python

MODPY_RUNDEP =	No

RUN_DEPENDS =	devel/desktop-file-utils

BUILD_DEPENDS =	${MODGNU_AUTOCONF_DEPENDS} \
		${MODGNU_AUTOMAKE_DEPENDS}

LIB_DEPENDS =	devel/sdl

CONFIGURE_STYLE =	gnu
AUTOCONF_VERSION =	2.69
AUTOMAKE_VERSION =	1.15

pre-configure:
	@cd ${WRKSRC} && ${AUTOCONF_ENV} autoreconf -i

.include <bsd.port.mk>
