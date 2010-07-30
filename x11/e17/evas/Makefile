# $OpenBSD: Makefile,v 1.14 2010/07/30 11:29:44 ajacoutot Exp $

COMMENT =		canvas API for X
DISTNAME =		evas-0.9.9.061

EPOCH=		0
REVISION=	1

SHARED_LIBS +=	evas                 0.0 \
		evas-ver-svn-02	     0.0

# BSD
PERMIT_PACKAGE_CDROM =	Yes
PERMIT_PACKAGE_FTP =	Yes
PERMIT_DISTFILES_CDROM =Yes
PERMIT_DISTFILES_FTP =	Yes

USE_X11 =		Yes

USE_LIBTOOL =		Yes

WANTLIB += GL GLU X11 Xau Xdmcp Xext Xrender crypto eina expat tiff
WANTLIB += fontconfig freetype jpeg m pixman-1 pthread-stubs eet
WANTLIB += ssl xcb xcb-image xcb-render xcb-shm z png gif

LIB_DEPENDS =		::graphics/png \
			::graphics/libungif \
			::graphics/tiff \
			::x11/e17/eet

# Eventually more loaders will be enabled,
# -enable-gl-x11 might be added for some arch
CONFIGURE_ARGS +=	--disable-fribidi \
			--disable-image-loader-svg \
			--disable-image-loader-edb \
			--disable-cpu-sse \
			--disable-cpu-sse2 \
			--disable-cpu-altivec \
			--enable-image-loader-jpeg \
			--enable-image-loader-png \
			--enable-image-loader-gif \
			--enable-gl-x11 \
			--enable-software-x11 \
			--enable-buffer \
			--enable-software-x11 \
			--enable-xrender-x11 \
			--enable-gl-x11 \
			--enable-software-xcb \
			--enable-xrender-xcb \
			--disable-gl-glew \
			--enable-software-16-x11
CONFIGURE_ENV +=        CPPFLAGS="-I${LOCALBASE}/include -I${X11BASE}/include" \
                        LDFLAGS="-L${LOCALBASE}/lib -L${X11BASE}/lib"

FULLARCH =		${MACHINE_ARCH:S/amd64/x86_64/}
SUBST_VARS +=		FULLARCH

.include <bsd.port.mk>
