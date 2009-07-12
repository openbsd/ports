# $OpenBSD: Makefile,v 1.79 2009/07/12 20:39:33 ajacoutot Exp $

SHARED_ONLY=			Yes

COMMENT-main=			multi-platform graphical toolkit
COMMENT-docs=           	gtk+2 documentation
COMMENT-cups=			gtk+2 CUPS print backend

VERSION=			2.16.4
DISTNAME=			gtk+-${VERSION}
PKGNAME-main=			gtk+2-${VERSION}
PKGNAME-docs=			gtk+2-docs-${VERSION}
PKGNAME-cups=			gtk+2-cups-${VERSION}
CATEGORIES=			x11 devel

SHARED_LIBS+=	gdk_pixbuf-2.0		1401.0 #.1600.2
SHARED_LIBS+=	gdk-x11-2.0		1401.0 #.1600.2
SHARED_LIBS+=	gtk-x11-2.0		1401.0 #.1600.2
SHARED_LIBS+=	gdk_pixbuf_xlib-2.0	1401.0 #.1600.2
SHARED_LIBS+=	gailutil		23.0   #.18.1

HOMEPAGE=			http://www.gtk.org/

# LGPLv2
PERMIT_PACKAGE_CDROM=		Yes
PERMIT_PACKAGE_FTP=		Yes
PERMIT_DISTFILES_CDROM=		Yes
PERMIT_DISTFILES_FTP=		Yes

MASTER_SITES=			${MASTER_SITE_GNOME:=sources/gtk+/${VERSION:C/^([0-9]+\.[0-9]+).*/\1/}/}
EXTRACT_SUFX=			.tar.bz2

MULTI_PACKAGES=         	-main -docs -cups

WANTLIB=		X11 Xau Xcomposite Xcursor Xdamage Xdmcp Xext \
			Xfixes Xi Xinerama Xrandr Xrender cairo expat \
			fontconfig freetype glitz m pcre pixman-1 z

MODULES=		devel/gettext

BUILD_DEPENDS=		::print/cups
RUN_DEPENDS=		::x11/hicolor-icon-theme

LIB_DEPENDS-main=	${LIB_DEPENDS} \
			glib-2.0.>=1800.0,gmodule-2.0.>=1800.0,gobject-2.0.>=1800.0,gio-2.0::devel/glib2 \
			pango-1.0.>=1600.0,pangocairo-1.0.>=1600.0,pangoft2-1.0.>=1600.0::devel/pango \
			atk-1.0.>=1809.0::devel/atk \
			tiff.>=35::graphics/tiff \
			png.>=3::graphics/png \
			jasper::graphics/jasper \
			jpeg.>=62::graphics/jpeg
WANTLIB-main=		${WANTLIB} c pthread

LIB_DEPENDS-docs=
RUN_DEPENDS-docs=
WANTLIB-docs=
PKG_ARCH-docs=		*

LIB_DEPENDS-cups=	${LIB_DEPENDS} \
			cups.>=3::print/cups \
			gdk-x11-2.0,gdk_pixbuf-2.0,gtk-x11-2.0::${BASE_PKGPATH},-main
WANTLIB-cups=		${WANTLIB} atk-1.0 gio-2.0 glib-2.0 gmodule-2.0 \
			gobject-2.0 pango-1.0 pangocairo-1.0 asn1 crypto gssapi krb5 \
			pangoft2-1.0 png gcrypt gnutls gpg-error tasn1

USE_X11=			Yes
USE_GMAKE=			Yes
USE_LIBTOOL=			Yes
CONFIGURE_STYLE=		gnu
CONFIGURE_ARGS=			${CONFIGURE_SHARED} \
				--disable-gtk-doc \
				--with-xinput=yes \
				--disable-papi
CONFIGURE_ENV=			CPPFLAGS="-I${X11BASE}/include/freetype2/ -I${LOCALBASE}/include -I${LOCALBASE}/include/libpng" \
				LDFLAGS="-L${LOCALBASE}/lib"

FAKE_FLAGS=		sysconfdir=${PREFIX}/share/examples/gtk+2

# The regression tests require a running instance of X.
# You will also need to set the XAUTHORITY environment variable to point
# to the appropriate .Xauthority file.
REGRESS_IS_INTERACTIVE= Yes
REGRESS_FLAGS=		DISPLAY=${DISPLAY} XAUTHORITY=${XAUTHORITY}

# XXX we should use MODPY_BIN from the lang/python MODULE but
# we do not want to build/run_depends on python
pre-configure:
	perl -pi -e 's,/usr/bin/env python,${LOCALBASE}/bin/python2.5,' \
		${WRKSRC}/gtk/gtk-builder-convert

.include <bsd.port.mk>
