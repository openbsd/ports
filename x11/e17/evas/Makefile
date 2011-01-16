# $OpenBSD: Makefile,v 1.17 2011/01/16 00:37:45 laurent Exp $

COMMENT =		canvas API for X
DISTNAME =		evas-1.0.0.beta2
PKGNAME =		evas-1.0.0

EPOCH =			0

SHARED_LIBS +=		evas 1.0

# BSD
PERMIT_PACKAGE_CDROM =	Yes
PERMIT_PACKAGE_FTP =	Yes
PERMIT_DISTFILES_CDROM =Yes
PERMIT_DISTFILES_FTP =	Yes

USE_LIBTOOL =		Yes

WANTLIB += GL X11 Xau Xdamage Xdmcp Xext Xfixes Xrender Xxf86vm cairo croco-0.6
WANTLIB += crypto drm eet eina expat fontconfig freetype fribidi gdk_pixbuf-2.0
WANTLIB += gif gio-2.0 glib-2.0 gmodule-2.0 gobject-2.0 gthread-2.0 iconv intl
WANTLIB += jpeg m pango-1.0 pangocairo-1.0 pangoft2-1.0 pcre pixman-1 png
WANTLIB += pthread-stubs rsvg-2 ssl tiff xcb xcb-render xcb-shm xml2 z

LIB_DEPENDS =		x11/e17/eet>=1.4 \
			graphics/libungif \
			graphics/png \
			graphics/tiff \
			graphics/jpeg \
			graphics/libungif \
			print/freetype \
			devel/fribidi \
			x11/gnome/librsvg

CONFIGURE_ARGS +=	--disable-doc \
			--enable-no-dither-mask \
			--enable-small-dither-mask \
			--enable-line-dither-mask \
			--enable-word-cache \
			--enable-metric-cache

# ARGB Conversion from 32 to other pixel depths (slower -> faster)(nice -> ugly)
#			--enable-small-dither-mask
#			--enable-line-dither-mask
#			--enable-no-dither-mask
# Experimental performance
#	Enable experimental word caching to speed up rendering [[default=disabled]]
#			--enable-word-cache
#	Enable experimental metric caching to speed up rendering [[default=disabled]]
#			--enable-metric-cache
# performance
#			--disable-evas-magic-debug
# performance multi CPU / rthread needed (attach thread to CPU, pipe rendering)
#			--enable-pipe-render
#			--enable-async-render
# performance / cahing, activate by user, need shm_open() ! (fix with shm_get() ?)
#			--enable-evas-cserve
# engine modules : for performance, static ?
#	software
#			--enable-software-xlib: libx11 (http://xorg.freedesktop.org/)
#			--enable-software-xcb: libxcb (http://xorg.freedesktop.org/)
#			--enable-software-8-x11
#			--enable-software-16-x11: libxrender (http://xorg.freedesktop.org/)
#	xrender x11 : libxrender (http://xorg.freedesktop.org/)
#			--enable-xrender-x11
#			--enable-xrender-xcb
#	gl x11 engine : libxrender (http://xorg.freedesktop.org/)
#			--enable-gl-x11
#	gl engine flavor (active gles + choose one of variety)
#			--enable-gl-flavor-gles
#			--enable-gles-variety-sgx (Most GL-ES2 GPUs with shader compiler)
#			--enable-gles-variety-s3c6410 (s3c6410 with offline shader compiler)

CONFIGURE_ENV +=	CXXFLAGS="${CFLAGS} -I${LOCALBASE}/include -I${X11BASE}/include" \
			CPPFLAGS="${CFLAGS} -I${LOCALBASE}/include -I${X11BASE}/include" \
			CFLAGS="${CFLAGS} -I${LOCALBASE}/include -I${X11BASE}/include" \
			LDFLAGS="${LDFLAGS} -L${LOCALBASE}/lib -L${X11BASE}/lib"

FULLARCH =		${MACHINE_ARCH:S/amd64/x86_64/}
SUBST_VARS +=		FULLARCH

.include <bsd.port.mk>
