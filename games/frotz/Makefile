# $OpenBSD: Makefile,v 1.25 2022/03/05 04:48:39 kmos Exp $

BROKEN-sparc64=	relocation truncated to fit: R_SPARC_GOT13 against symbol

V =			2.52
COMMENT=		interpreter for Infocom-compatible games

DISTNAME=		frotz-${V}
REVISION=		2
CATEGORIES=     	games

HOMEPAGE=		https://davidgriffith.gitlab.io/frotz/
MAINTAINER=		Brian Callahan <bcallah@openbsd.org>

# GPLv2+
PERMIT_PACKAGE=	Yes

WANTLIB += SDL2 SDL2_mixer ao c curses execinfo freetype jpeg
WANTLIB += m modplug png pthread samplerate sndfile vorbisfile
WANTLIB += z

MASTER_SITES=		https://gitlab.com/DavidGriffith/frotz/-/archive/${V}/

LIB_DEPENDS=		audio/libao \
			audio/libmodplug \
			audio/libsamplerate \
			audio/libsndfile \
			devel/sdl2-mixer \
			graphics/jpeg \
			graphics/png

USE_GMAKE=		Yes
MAKE_FLAGS=		CC="${CC}" OPTS="${CFLAGS}" CONFIG_DIR="${SYSCONFDIR}"
FAKE_FLAGS=		PREFIX=${WRKINST}${TRUEPREFIX}

INSTALL_TARGET=		install install_dumb install_sdl

CFLAGS +=		-DUSE_UNISTD_H -DCOLOR_SUPPORT -DEMACS_EDITING

FAKE_FLAGS =		DESTDIR= MAN_PREFIX="${DESTDIR}${PREFIX}"

NO_TEST=		Yes

.include <bsd.port.mk>
