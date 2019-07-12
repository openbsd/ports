# $OpenBSD: Makefile,v 1.42 2019/07/12 20:46:26 sthen Exp $

ONLY_FOR_ARCHS=	amd64 i386

COMMENT=	3D realtime strategy on a future earth

DISTNAME=	warzone2100-3.2.3
CATEGORIES=	games
MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=warzone2100/}
EXTRACT_SUFX=	.tar.xz
REVISION=	4

HOMEPAGE=	https://wz2100.net/

# GPLv2+
PERMIT_PACKAGE=	Yes

WANTLIB += GL GLEW GLU Qt5Core Qt5Gui Qt5Script Qt5Widgets SDL2 X11
WANTLIB += Xrandr c crypto fontconfig freetype fribidi harfbuzz iconv
WANTLIB += intl m ogg openal physfs png pthread theora vorbis
WANTLIB += vorbisfile z ${COMPILER_LIBCXX}

MODULES=	x11/qt5
COMPILER =	base-clang ports-gcc

LIB_DEPENDS=	audio/libogg \
		audio/libvorbis \
		audio/openal>=20110627 \
		devel/fribidi \
		devel/physfs \
		devel/sdl2 \
		graphics/glew \
		graphics/png \
		multimedia/libtheora \
		x11/qt5/qtscript

BUILD_DEPENDS=	archivers/unzip \
		archivers/zip \
		textproc/asciidoc
RUN_DEPENDS=	devel/desktop-file-utils

SEPARATE_BUILD=	Yes
USE_GMAKE=	Yes
CONFIGURE_STYLE= autoconf
AUTOCONF_VERSION= 2.69
CONFIGURE_ARGS+= --with-distributor="OpenBSD"
CONFIGURE_ENV+=	CPPFLAGS="-I${X11BASE}/include -I${LOCALBASE}/include" \
		LDFLAGS="-L${X11BASE}/lib -L${LOCALBASE}/lib" \
		ac_cv_path_MOC4="${LOCALBASE}/bin/moc4" \
		ac_cv_path_UIC4="${LOCALBASE}/bin/uic4"

# XXX this is a horrible hack to make sure we get to our glm
# which is 100% incompatible with ports glm
MAKE_FLAGS += "DEFS=-DHAVE_CONFIG_H -I${WRKSRC}/includefirst"

# libogg routines are called from the main program, so we need to
# explicitly link against it.  Wedge it in.
MAKE_FLAGS += VORBIS_LIBS="`pkg-config --libs vorbis` -logg"

pre-configure:
	mkdir -p ${WRKSRC}/includefirst
	ln -sf ${WRKSRC}/3rdparty/glm ${WRKSRC}/includefirst/glm
.for _prog in git svn svnversion
	@cd ${WRKDIR}/bin && ln -sf /usr/bin/true ${_prog}
.endfor
	@cd ${WRKDIR}/bin && ln -sf ${LOCALBASE}/bin/gflex flex

.include <bsd.port.mk>
