# $OpenBSD: Makefile,v 1.12 2018/05/14 13:59:15 fcambus Exp $

COMMENT =	open-source reimplementation of Impulse Tracker

GH_ACCOUNT =	schismtracker
GH_PROJECT =	schismtracker
GH_TAGNAME =	20180513

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
	@cd ${WRKSRC} && \
	AUTOCONF_VERSION=${AUTOCONF_VERSION} \
	AUTOMAKE_VERSION=${AUTOMAKE_VERSION} \
	autoreconf -i

.include <bsd.port.mk>
