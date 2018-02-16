# $OpenBSD: Makefile,v 1.1.1.1 2018/02/16 11:39:51 kirby Exp $

COMMENT =	open source game engine based on FreeSpace 2

V =		3.8.0
DISTNAME =	fs2_open_${V:S/./_/g}-source-Unix
PKGNAME =	fs2open-${V}

GH_ACCOUNT =	scp-fs2open
GH_PROJECT =	fs2open.github.com
GH_TAGNAME =	release_${V:S/./_/g}

# Upstream pulls in cmake modules from the asarium's fork
RPAVLIK_MODS =	ad436ee7be33ca291a59866a173b777b0e2d81ce
COTIRE =	cotire-1.7.10

# asarium/cmake-modules is a mirror of rpavlik/cmake-modules
MASTER_SITES0 =	https://github.com/rpavlik/cmake-modules/archive/
MASTER_SITES1 =	https://github.com/sakra/cotire/archive/

DISTFILES =	${DISTNAME}${EXTRACT_SUFX} \
		fs2open-rpavlik-${V}{${RPAVLIK_MODS}}.tar.gz:0 \
		${COTIRE}.tar.gz:1

CATEGORIES =	games

MAINTAINER =	Thomas Frohwein <frohwein@ymail.com>

# Volition custom license (non-commercial, not really a license)
PERMIT_PACKAGE_CDROM =	selling explicitly prohibited
PERMIT_PACKAGE_FTP =	no license at all
PERMIT_DISTFILES_FTP =	no license at all

WANTLIB += ${COMPILER_LIBCXX} c m z
WANTLIB += SDL2 ${MODLUA_WANTLIB} openal
WANTLIB += avcodec avformat avutil jpeg swresample swscale
WANTLIB += jansson png

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

WRKDIST =		${WRKDIR}/fs2open.github.com-release_${V:S/./_/g}

post-extract:
	rmdir	${WRKSRC}/cmake/external/rpavlik-cmake-modules \
		${WRKSRC}/cmake/external/cotire
	ln -s	${WRKDIR}/cmake-modules-${RPAVLIK_MODS} \
		${WRKSRC}/cmake/external/rpavlik-cmake-modules
	ln -s	${WRKDIR}/cotire-${COTIRE} ${WRKSRC}/cmake/external/cotire

post-install:
	${SUBST_CMD} -c -m 755 ${FILESDIR}/fs2open ${PREFIX}/bin/fs2open

.include <bsd.port.mk>
