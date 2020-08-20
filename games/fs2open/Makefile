# $OpenBSD: Makefile,v 1.8 2020/08/20 17:32:37 thfr Exp $

COMMENT =	open source game engine based on FreeSpace 2

V =		3.8.0
DISTNAME =	fs2_open_${V:S/./_/g}-source-Unix
PKGNAME =	fs2open-${V}
REVISION =	3

CATEGORIES =	games

HOMEPAGE =	https://github.com/scp-fs2open/fs2open.github.com

MAINTAINER =	Thomas Frohwein <thfr@openbsd.org>

# Volition custom license (non-commercial, not really a license)
PERMIT_PACKAGE =	no license at all
PERMIT_DISTFILES =	no license at all

WANTLIB += ${COMPILER_LIBCXX} c m z
WANTLIB += SDL2 ${MODLUA_WANTLIB} openal
WANTLIB += avcodec avformat avutil jpeg swresample swscale
WANTLIB += jansson png

MASTER_SITES =	https://github.com/scp-fs2open/fs2open.github.com/releases/download/release_${V:S/./_/g}/

# Remove on next update
DISTFILES = ${DISTNAME}_1{${DISTNAME}}${EXTRACT_SUFX}

# c++11
COMPILER =		base-clang ports-gcc
MODULES =		devel/cmake \
			lang/lua
LIB_DEPENDS =		audio/openal \
			devel/sdl2 \
			graphics/ffmpeg \
			graphics/png \
			devel/jansson

CONFIGURE_ARGS =	-DCMAKE_INSTALL_PREFIX=${LOCALBASE}/share/fs2open \
			-DCMAKE_DISABLE_FIND_PACKAGE_Doxygen:Bool=Yes

NO_TEST =		Yes

WRKDIST =		${WRKDIR}/fs2open.github.com

pre-patch:
	@cd ${WRKSRC} && perl -i -pe 's/\r$$//' code/utils/boost/syncboundedqueue.h

post-install:
	${SUBST_CMD} -c -m 755 ${FILESDIR}/fs2open ${PREFIX}/bin/fs2open

.include <bsd.port.mk>
