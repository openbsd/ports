COMMENT=	draw pictures of the earth textured by an image

DISTNAME=	xplanet-1.3.1
CATEGORIES=	astro geo x11

HOMEPAGE=	http://xplanet.sourceforge.net/
SITES=		${SITE_SOURCEFORGE:=xplanet/}

# GPLv2+
PERMIT_PACKAGE=	Yes

WANTLIB += X11 c charset fontconfig freetype gif glib-2.0 gobject-2.0
WANTLIB += harfbuzz iconv intl jpeg m pango-1.0 pangoft2-1.0 png pthread
WANTLIB += ${COMPILER_LIBCXX} z

COMPILER =		base-clang ports-gcc base-gcc

LIB_DEPENDS=		devel/gettext,-runtime \
			devel/pango \
			graphics/giflib \
			graphics/jpeg \
			graphics/png \
			devel/glib2

RUN_DEPENDS=		geo/openbsd-developers


CONFIGURE_STYLE=	gnu
CONFIGURE_ARGS=		--without-xscreensaver \
			--without-pnm --without-tiff \
			--without-cspice

CONFIGURE_ENV=		CPPFLAGS="-I${LOCALBASE}/include" \
			LDFLAGS="-L${X11BASE}/lib -L${LOCALBASE}/lib"

post-install:
	${INSTALL_DATA} ${FILESDIR}/openbsd_markers \
			${PREFIX}/share/xplanet/config/
	${INSTALL_PROGRAM_DIR} ${PREFIX}/share/xplanet/scripts
	${INSTALL_SCRIPT} ${FILESDIR}/openbsd_markers.sh \
			${PREFIX}/share/xplanet/scripts/

	@perl -pi -e 's,%%LOCALBASE%%,${LOCALBASE},' \
			${PREFIX}/share/xplanet/config/openbsd_markers \
			${PREFIX}/share/xplanet/scripts/openbsd_markers.sh

.include <bsd.port.mk>
