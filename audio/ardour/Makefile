# $OpenBSD: Makefile,v 1.9 2013/04/03 07:23:51 ajacoutot Exp $

ONLY_FOR_ARCHS =	amd64 i386 powerpc
SHARED_ONLY =		Yes

COMMENT =		digital audio workstation

DISTNAME =		ardour-2.8.14
CATEGORIES =		audio
HOMEPAGE =		http://ardour.org
REVISION =		3

# GPLv2+
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB = GL X11 Xau Xcomposite Xcursor Xdamage Xdmcp Xext Xfixes \
	Xi Xinerama Xrandr Xrender Xxf86vm art_lgpl_2 atk-1.0 \
	atkmm-1.6 aubio boost_system-mt c cairo cairomm-1.0 curl drm \
	execinfo expat fftw3 fftw3f fontconfig freetype gailutil \
	gdk-x11-2.0 gdk_pixbuf-2.0 gdkmm-2.4 gio-2.0 giomm-2.4 \
	glib-2.0 glibmm-2.4 gmodule-2.0 gnomecanvas-2 gnomecanvasmm-2.6 \
	gobject-2.0 gthread-2.0 gtk-x11-2.0 gtkmm-2.4 harfbuzz jack \
	lo lrdf m pango-1.0 pangocairo-1.0 pangoft2-1.0 pangomm-1.4 \
	pcre pixman-1 png pthread pthread-stubs samplerate \
	sigc-2.0 sndfile sndio stdc++ xcb xcb-render xcb-shm \
	xml2 xslt z

# Use mirrors as official site has click-through donation-request download.
MASTER_SITES =		http://stsp.name/openbsd/distfiles/ \
			http://pkgs.fedoraproject.org/repo/pkgs/ardour/ardour-2.8.14.tar.bz2/c79219ba10735d0b061d53a84ae611a4/
EXTRACT_SUFX =		.tar.bz2

MODULES =		devel/gettext \
			devel/scons

VMEM_WARNING =	Yes
NO_TEST=	Yes

MODSCONS_ENV=	CC="${CC}" \
		CXX="${CXX}" \
		CCFLAGS="${CFLAGS}" \
		CXXFLAGS="${CXXFLAGS}" \
		LINKFLAGS="${LDFLAGS}" \
		CPPPATH="${LOCALBASE}/include ${X11BASE}/include" \
		LIBPATH="${LOCALBASE}/lib ${X11BASE}/lib" \
		PREFIX="${TRUEPREFIX}" \
		debug=0 \
		DIST_LIBDIR=lib \
		LIBLO=1 \
		FREEDESKTOP=1 \
		SYSLIBS=1

# the fd.or utilities are needed at build time (FREEDESKTOP=1)
BUILD_DEPENDS =		devel/desktop-file-utils \
			x11/gtk+2,-guic \
			misc/shared-mime-info

RUN_DEPENDS = 		devel/desktop-file-utils \
			x11/gtk+2,-guic \
			misc/shared-mime-info
LIB_DEPENDS =		audio/aubio \
			audio/liblo \
			devel/boost \
			devel/libexecinfo \
			math/fftw3 \
			textproc/liblrdf \
			x11/gnome/libgnomecanvasmm

post-extract:
	cp ${FILESDIR}/sndio_midiport.h ${WRKSRC}/libs/midi++2/midi++/
	cp ${FILESDIR}/sndio_midiport.cc ${WRKSRC}/libs/midi++2/

post-install:
	mv ${WRKINST}/etc/ardour2 ${PREFIX}/share/examples/

.include <bsd.port.mk>
