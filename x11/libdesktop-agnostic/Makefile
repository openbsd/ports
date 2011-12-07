# $OpenBSD: Makefile,v 1.7 2011/12/07 08:55:47 jasper Exp $

COMMENT=		desktop-agnostic library, apis and tools

V=			0.3.92
DISTNAME=		libdesktop-agnostic-$V

REVISION=		4

CATEGORIES=		x11

HOMEPAGE=		https://launchpad.net/libdesktop-agnostic

# GPLv2/LGPLv2.1
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=		${HOMEPAGE}/0.4/$V/+download/

MODULES=		devel/waf \
			devel/gettext \
			textproc/intltool

SO_VERSION =		0.0

.for _lib in desktop-agnostic desktop-agnostic-ui desktop-agnostic-fdo desktop-agnostic-cfg desktop-agnostic-vfs
SHARED_LIBS +=	${_lib}	${SO_VERSION}
.endfor

BUILD_DEPENDS=		lang/vala \
			devel/gobject-introspection \
			devel/py-gobject
RUN_DEPENDS=		devel/py-gobject
LIB_DEPENDS =		x11/gtk+2 \
			devel/gconf2 \
			${MODPY_LIB_DEPENDS}

WANTLIB = GL X11 Xau Xcomposite Xcursor Xdamage Xdmcp
WANTLIB += Xext Xfixes Xi Xinerama Xrandr Xrender Xxf86vm atk-1.0
WANTLIB += c cairo drm expat ffi fontconfig freetype gconf-2 gdk-x11-2.0
WANTLIB += gdk_pixbuf-2.0 gio-2.0 glib-2.0 gmodule-2.0 gobject-2.0
WANTLIB += gthread-2.0 gtk-x11-2.0 m pango-1.0 pangocairo-1.0
WANTLIB += pangoft2-1.0 pixman-1 png pthread pthread-stubs ${MODPY_WANTLIB}
WANTLIB += util xcb xcb-render xcb-shm z dbus-1

CONFIGURE_ARGS =	--config-backends=keyfile,gconf \
			--vfs-backends=gio \
			--desktop-entry-backends=glib
NO_REGRESS =		Yes

CONFIGURE_ENV =		CPPFLAGS=-I${LOCALBASE}/include
MAKE_ENV +=		SO_VERSION=${SO_VERSION}

post-configure:
	#XXX big hammer to avoir -Wl,-h,libfoo.so.0
	perl -pi -e "s/SONAME_ST.*/SONAME_ST=''/" ${WRKSRC}/build/c4che/default.cache.py

post-install:
	# remove so symlinks
	rm -f ${PREFIX}/lib/libdesktop-agnostic*.so{,??}
	# move headers to the names the users of that lib uses
	mv ${PREFIX}/include/libdesktop-agnostic-1.0/libdesktop-agnostic/{desktop-agnostic-cfg,config}.h
	mv ${PREFIX}/include/libdesktop-agnostic-1.0/libdesktop-agnostic/{desktop-agnostic-,}vfs.h
	mv ${PREFIX}/include/libdesktop-agnostic-1.0/libdesktop-agnostic/{desktop-agnostic-,}ui.h
	mv ${PREFIX}/include/libdesktop-agnostic-1.0/libdesktop-agnostic/{desktop-agnostic-,}fdo.h

.include <bsd.port.mk>
