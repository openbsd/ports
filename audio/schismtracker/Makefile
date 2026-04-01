COMMENT =	open-source reimplementation of Impulse Tracker

V =		20251014
DISTNAME =	schismtracker-${V}.source
PKGNAME =	${DISTNAME:S/.source//}
REVISION =	1

CATEGORIES =	audio x11

HOMEPAGE =	https://schismtracker.org/

MAINTAINER =	Frederic Cambus <fcambus@openbsd.org>

# GPLv2+
PERMIT_PACKAGE =	Yes

COMPILER =	base-clang ports-gcc
COMPILER_LANGS =	c

WANTLIB +=	SDL2 X11 c m utf8proc

SITES =		https://github.com/schismtracker/schismtracker/releases/download/${V}/

MODULES =	lang/python

MODPY_RUNDEP =	No

RUN_DEPENDS =	devel/desktop-file-utils

LIB_DEPENDS =	devel/sdl2 \
		textproc/libutf8proc

WRKDIST =	${WRKDIR}/${PKGNAME}

CONFIGURE_STYLE =	gnu

CONFIGURE_ARGS =	--enable-sdl2-linking \
			--with-sdl2 \
			--without-sdl12 \
			--without-sdl3 \
			--without-avformat \
			--without-flac

CFLAGS +=		-I${LOCALBASE}/include/libutf8proc

USE_GMAKE =		Yes

.include <bsd.port.mk>
