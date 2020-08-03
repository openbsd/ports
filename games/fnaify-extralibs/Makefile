# $OpenBSD: Makefile,v 1.1.1.1 2020/08/03 18:54:31 thfr Exp $

ONLY_FOR_ARCHS =	${MONO_ARCHS}

COMMENT =	additional libraries for running games with fnaify
V =		0.1
DISTNAME =	fnaify-extralibs-${V}

SHARED_LIBS +=  SDL2_image_compact	0.0 # 0.0
SHARED_LIBS +=  atomstb			0.0 # 0.0
SHARED_LIBS +=  fmod_SDL		0.0 # 0.0

CATEGORIES =	games
HOMEPAGE =	https://github.com/rfht/fnaify-extralibs
MAINTAINER =	Thomas Frohwein <thfr@openbsd.org>

# zlib (AZSNotSFML, FMOD_SDL)
PERMIT_PACKAGE =	Yes

WANTLIB += SDL2

MASTER_SITES =	https://github.com/rfht/fnaify-extralibs/releases/download/${V}/
EXTRACT_SUFX =	.tar.xz
LIB_DEPENDS =	devel/sdl2
USE_GMAKE =	Yes
NO_TEST =	Yes

.include <bsd.port.mk>
