COMMENT =		terminal to access the PLATO system

DISTNAME =		pterm-6.0.4
REVISION =		1

CATEGORIES =		comms x11

HOMEPAGE =		https://cyber1.org

MAINTAINER =		Tim Meunier <trondd@kagu-tsuchi.com>

# DtCyber (similar to zlib) for pterm
# GPLv2+ in 8080 emulator
PERMIT_PACKAGE =	Yes

WANTLIB =		${COMPILER_LIBCXX} c m SDL sndfile
WANTLIB +=		wx_baseu-3.2 wx_baseu_net-3.2 wx_baseu_xml-3.2
WANTLIB +=		wx_gtk3u_core-3.2
WANTLIB +=		wx_gtk3u_html-3.2 wx_gtk3u_qa-3.2 wx_gtk3u_xrc-3.2

SITES =			https://cyber1.org/download/linux/

EXTRACT_SUFX =		.tar.bz2

COMPILER =		base-clang ports-gcc base-gcc

MODULES =		lang/python
MODPY_RUNDEP =		No
CONFIGURE_STYLE =	none

LIB_DEPENDS =		audio/libsndfile \
			devel/sdl \
			x11/wxWidgets>=3.0.4

MAKE_FLAGS =		CXX="${CXX}" CC="${CC}" OPTIMIZE="${CFLAGS}"

USE_GMAKE =		Yes

NO_TEST =		Yes

ALL_TARGET =		pterm

do-install:
	# Rename to deconflict with net/putty,-gui
	${INSTALL_PROGRAM} ${WRKBUILD}/pterm ${PREFIX}/bin/platoterm

.include <bsd.port.mk>
