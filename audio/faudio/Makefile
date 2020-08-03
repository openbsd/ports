# $OpenBSD: Makefile,v 1.9 2020/08/03 18:44:25 thfr Exp $

# versions are in sync with FNA versions
V =		20.08
COMMENT =	XAudio reimplementation for open platforms
DISTNAME =	fna-${V:S/.//g}
PKGNAME =	faudio-${V}

SHARED_LIBS =	FAudio		2.2	# 20.08

CATEGORIES =	audio
HOMEPAGE =	https://github.com/FNA-XNA/FAudio
MAINTAINER =	Thomas Frohwein <thfr@openbsd.org>

# zlib
PERMIT_PACKAGE =	Yes

WANTLIB +=	SDL2 glib-2.0 gobject-2.0 gstapp-1.0 gstaudio-1.0 gstbase-1.0
WANTLIB +=	gstreamer-1.0 intl

MASTER_SITES =	https://github.com/FNA-XNA/FNA/releases/download/${V}/
EXTRACT_SUFX =	.zip

COMPILER =	base-clang ports-gcc

MODULES =	devel/cmake

LIB_DEPENDS =	devel/sdl2 \
		multimedia/gstreamer1/core \
		multimedia/gstreamer1/plugins-base

USE_GMAKE =	Yes

CONFIGURE_ARGS +=	-DBUILD_TESTS=ON \
			-DGSTREAMER=ON

WRKDIST =		${WRKDIR}/FNA/lib/FAudio

do-test:
	cd ${WRKBUILD} && ./faudio_tests

.include <bsd.port.mk>
