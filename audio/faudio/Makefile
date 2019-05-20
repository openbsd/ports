# $OpenBSD: Makefile,v 1.1.1.1 2019/05/20 04:26:41 thfr Exp $

# versions are in sync with FNA versions
V =		19.05
COMMENT =	XAudio reimplementation for open platforms
DISTNAME =	fna-${V:S/.//g}
PKGNAME =	faudio-${V}

SHARED_LIBS =	FAudio		0.0	# 19.05

CATEGORIES =	audio
HOMEPAGE =	https://github.com/FNA-XNA/FAudio
MAINTAINER =	Thomas Frohwein <thfr@openbsd.org>

# zlib
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB += SDL2

MASTER_SITES =	https://github.com/FNA-XNA/FNA/releases/download/${V}/
EXTRACT_SUFX =	.zip

COMPILER =	base-clang ports-gcc

MODULES =	devel/cmake

LIB_DEPENDS =	devel/sdl2

USE_GMAKE =	Yes

# FFMPEG (for WMA support) requires a more recent ffmpeg version than 2.8
CONFIGURE_ARGS +=	-DBUILD_TESTS=ON

WRKDIST =		${WRKDIR}/FNA/lib/FAudio

do-test:
	cd ${WRKBUILD} && ./faudio_tests

.include <bsd.port.mk>
