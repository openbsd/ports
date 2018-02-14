# $OpenBSD: Makefile,v 1.2 2018/02/14 08:59:17 bentley Exp $

COMMENT =	frenetic space shoot-em-up

V =		0.7.5.1
DISTNAME =	koboredux-$V

GH_ACCOUNT =	olofson
GH_PROJECT =	koboredux
GH_TAGNAME =	v$V

CATEGORIES =	games

HOMEPAGE =	http://koboredux.com/

MAINTAINER =	Anthony J. Bentley <anthony@anjbe.name>

# GPLv2+
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB += ${COMPILER_LIBCXX} SDL2 SDL2_image audiality2 c m

MODULES =		devel/cmake
RUN_DEPENDS =		devel/desktop-file-utils
LIB_DEPENDS =		audio/audiality2 \
			devel/sdl2-image

# KOBO_EXTRA_LIBRARIES due to https://github.com/olofson/koboredux/issues/454
CONFIGURE_ARGS =	-DKOBO_EXTRA_LIBRARIES=

NO_TEST =		Yes

.include <bsd.port.mk>
