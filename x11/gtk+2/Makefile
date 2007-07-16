# $OpenBSD: Makefile,v 1.53 2007/07/16 07:55:46 jasper Exp $

SHARED_ONLY=			Yes

COMMENT-main=			multi-platform graphical toolkit
COMMENT-docs=           	gtk+-2 documentation

VERSION=			2.10.13
DISTNAME=			gtk+-${VERSION}
PKGNAME-main=			gtk+2-${VERSION}
PKGNAME-docs=			gtk+2-docs-${VERSION}
SHARED_LIBS +=	gdk_pixbuf-2.0       1000.13  # .1000.13
SHARED_LIBS +=	gdk-x11-2.0          1000.13  # .1000.13
SHARED_LIBS +=	gtk-x11-2.0          1000.13  # .1000.13
SHARED_LIBS +=	gdk_pixbuf_xlib-2.0  1000.13  # .1000.13
CATEGORIES=			x11 devel

HOMEPAGE=			http://www.gtk.org

# LGPL
PERMIT_PACKAGE_CDROM=		Yes
PERMIT_PACKAGE_FTP=		Yes
PERMIT_DISTFILES_CDROM=		Yes
PERMIT_DISTFILES_FTP=		Yes

MASTER_SITES=			${MASTER_SITE_GNOME:=sources/gtk+/2.10/}
EXTRACT_SUFX=			.tar.bz2

MULTI_PACKAGES=         	-main -docs

WANTLIB-main=		X11.>=10 Xau Xcursor Xdmcp Xext Xfixes Xi Xinerama \
			Xrender Xrandr c cairo expat fontconfig freetype \
			glib-2.0 glitz m gmodule-2.0 gobject-2.0 gthread-2.0 \
			pthread z

MODULES=			devel/gettext

LIB_DEPENDS=			glib-2.0.>=1000.0,gmodule-2.0.>=1000.0,gobject-2.0.>=1000.0::devel/glib2 \
				pango-1.0.>=1300.0,pangocairo-1.0.>=1300.0,pangoft2-1.0.>=1300.0::devel/pango \
				atk-1.0.>=1809.0::devel/atk \
				tiff.>=35::graphics/tiff \
				png.>=3::graphics/png \
				jpeg.>=62::graphics/jpeg
RUN_DEPENDS=			::x11/hicolor-icon-theme

LIB_DEPENDS-docs=
RUN_DEPENDS-docs=
PKG_ARCH-docs=			*

USE_X11=			Yes
USE_GMAKE=			Yes
USE_LIBTOOL=			Yes
CONFIGURE_STYLE=		gnu
CONFIGURE_ARGS+=		--with-xinput=yes
CONFIGURE_ENV=			CPPFLAGS="-I${X11BASE}/include/freetype2/ -I${LOCALBASE}/include -I${LOCALBASE}/include/libpng" \
				LDFLAGS="-L${LOCALBASE}/lib" \
				ENABLE_CUPS="no"

# The regression tests require a running instance of X.
# You will also need to set the XAUTHORITY environment variable to point
# to the appropriate .Xauthority file.
REGRESS_IS_INTERACTIVE=Yes
REGRESS_FLAGS+=	DISPLAY=${DISPLAY} XAUTHORITY=${XAUTHORITY}

.include <bsd.port.mk>
