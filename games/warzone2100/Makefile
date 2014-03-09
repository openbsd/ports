# $OpenBSD: Makefile,v 1.23 2014/03/09 22:35:51 brad Exp $

ONLY_FOR_ARCHS=	amd64 i386

COMMENT=	3D realtime strategy on a future earth

DISTNAME=	warzone2100-3.1.1
CATEGORIES=	games
MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=warzone2100/}
EXTRACT_SUFX=	.tar.xz

HOMEPAGE=	http://wz2100.net/

# GPLv2+
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += GL GLEW GLU QtNetwork QtScript SDL X11 Xrandr c fontconfig
WANTLIB += freetype fribidi m ogg openal physfs png pthread stdc++
WANTLIB += theora vorbis vorbisfile z

MODULES=	devel/gettext \
		x11/qt4
LIB_DEPENDS=	audio/libogg \
		audio/libvorbis \
		audio/openal>=20110627 \
		devel/fribidi \
		devel/physfs \
		devel/sdl \
		graphics/glew \
		graphics/png \
		multimedia/libtheora
BUILD_DEPENDS=	archivers/unzip \
		archivers/zip
RUN_DEPENDS=	devel/desktop-file-utils

USE_GMAKE=	Yes
CONFIGURE_STYLE= autoconf
AUTOCONF_VERSION= 2.68
CONFIGURE_ARGS+= --with-distributor="OpenBSD"
CONFIGURE_ENV+=	CPPFLAGS="-I${X11BASE}/include -I${LOCALBASE}/include" \
		LDFLAGS="-L${X11BASE}/lib -L${LOCALBASE}/lib" \
		PKG_CONFIG_LIBDIR="/usr/lib/pkgconfig:${X11BASE}/lib/pkgconfig:${LOCALBASE}/lib/pkgconfig:${LOCALBASE}/lib/qt4/pkgconfig" \
		ac_cv_path_MOC4="${LOCALBASE}/bin/moc4" \
		ac_cv_path_UIC4="${LOCALBASE}/bin/uic4"

pre-configure:
.for _prog in git svn svnversion
	@cd ${WRKDIR}/bin && ln -sf /usr/bin/true ${_prog}
.endfor
	@cd ${WRKDIR}/bin && ln -sf ${LOCALBASE}/bin/gflex flex

.include <bsd.port.mk>
