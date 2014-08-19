# $OpenBSD: Makefile,v 1.13 2014/08/19 05:53:59 landry Exp $

COMMENT =		emulator for Nintendo Game Boy (Color/Advance)
BROKEN-alpha =		ICE or OOM on hq_implementation.cpp
BROKEN-hppa =		ICE or OOM on src/filters/hq/c/hq_base.h:421

DISTNAME =		vbam-1.8.0.1054-src
PKGNAME =		${DISTNAME:S/-src//}
REVISION =		6

CATEGORIES =		emulators

HOMEPAGE =		http://www.vba-m.com

MAINTAINER =		Anthony J. Bentley <anthony@cathet.us>

# GPLv2+ (see doc/License.txt)
PERMIT_PACKAGE_CDROM =		Yes

WANTLIB += GL GLU ICE SDL SM X11 Xcomposite Xcursor Xdamage Xext
WANTLIB += Xfixes Xi Xinerama Xmu Xrandr Xrender Xt atk-1.0 atkmm-1.6
WANTLIB += c cairo cairomm-1.0 fontconfig freetype gdk-x11-2.0
WANTLIB += gdk_pixbuf-2.0 gdkglext-x11-1.0 gdkglextmm-x11-1.2
WANTLIB += gdkmm-2.4 gio-2.0 giomm-2.4 glib-2.0 glibmm-2.4 gmodule-2.0
WANTLIB += gobject-2.0 gtk-x11-2.0 gtkglext-x11-1.0 gtkglextmm-x11-1.2
WANTLIB += gtkmm-2.4 m pango-1.0 pangocairo-1.0 pangoft2-1.0 pangomm-1.4
WANTLIB += pangox-1.0 png pthread sigc-2.0 stdc++ z

MASTER_SITES =		${MASTER_SITE_SOURCEFORGE:=vbam/}

MODULES =		devel/cmake \
			devel/gettext

RUN_DEPENDS =		devel/desktop-file-utils \
			x11/gtk+2,-guic

LIB_DEPENDS =		devel/sdl \
			x11/gtkglextmm

NO_TEST =		Yes

WRKDIST =		${WRKDIR}/${DISTNAME:S/-src//}

# requires posix_openpt
CONFIGURE_ARGS +=	-DENABLE_WX=OFF -DENABLE_FFMPEG=OFF

pre-fake:
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/vbam

.include <bsd.port.mk>
