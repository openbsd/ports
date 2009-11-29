# $OpenBSD: Makefile,v 1.92 2009/11/29 11:54:31 ajacoutot Exp $

SHARED_ONLY=			Yes

COMMENT-main=			multi-platform graphical toolkit
COMMENT-docs=           	gtk+2 documentation
COMMENT-cups=			gtk+2 CUPS print backend

VERSION=			2.18.3
DISTNAME=			gtk+-${VERSION}

PKGNAME-main=			gtk+2-${VERSION}p0
PKGNAME-docs=			gtk+2-docs-${VERSION}
PKGNAME-cups=			gtk+2-cups-${VERSION}p0

CATEGORIES=			x11 devel

SHARED_LIBS+=	gdk_pixbuf-2.0		1402.0 # .1800.1
SHARED_LIBS+=	gdk-x11-2.0		1402.0 # .1800.1
SHARED_LIBS+=	gtk-x11-2.0		1402.0 # .1800.1
SHARED_LIBS+=	gdk_pixbuf_xlib-2.0	1402.0 # .1800.1
SHARED_LIBS+=	gailutil		24.0   # .18.1

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
			fontconfig freetype glitz m pcre pixman-1 z \
			pthread-stubs xcb

MODULES=		devel/gettext

BUILD_DEPENDS=		::print/cups
RUN_DEPENDS=		::x11/hicolor-icon-theme

LIB_DEPENDS-main=	${LIB_DEPENDS} \
			glib-2.0.>=1800.0,gmodule-2.0.>=1800.0,gobject-2.0.>=1800.0,gio-2.0::devel/glib2 \
			pango-1.0.>=1600.0,pangocairo-1.0.>=1600.0,pangoft2-1.0.>=1600.0::devel/pango \
			atk-1.0.>=1809.0::devel/atk \
			tiff.>=35::graphics/tiff \
			png.>=3::graphics/png \
			jpeg.>=62::graphics/jpeg
WANTLIB-main=		${WANTLIB} c pthread

LIB_DEPENDS-docs=
RUN_DEPENDS-docs=
WANTLIB-docs=
PKG_ARCH-docs=		*

LIB_DEPENDS-cups=	${LIB_DEPENDS} \
			cups.>=3::print/cups \
			gdk-x11-2.0,gdk_pixbuf-2.0,gtk-x11-2.0::${BASE_PKGPATH},-main
WANTLIB-cups += ${WANTLIB}
WANTLIB-cups += asn1 atk-1.0 crypto gio-2.0 glib-2.0 gmodule-2.0 gobject-2.0
WANTLIB-cups += gssapi krb5 pango-1.0 pangocairo-1.0 pangoft2-1.0 png
WANTLIB-cups += ssl

USE_X11=			Yes
USE_GMAKE=			Yes
USE_LIBTOOL=			Yes
CONFIGURE_STYLE=		gnu
CONFIGURE_ARGS=			${CONFIGURE_SHARED} \
				--disable-gtk-doc \
				--with-xinput=yes \
				--disable-papi \
				--disable-silent-rules
CONFIGURE_ENV=			CPPFLAGS="-I${X11BASE}/include/freetype2/ -I${LOCALBASE}/include -I${LOCALBASE}/include/libpng" \
				LDFLAGS="-L${LOCALBASE}/lib"

FAKE_FLAGS=		sysconfdir=${PREFIX}/share/examples/gtk+2

REGRESS_IS_INTERACTIVE= x11

# XXX we should use MODPY_BIN from the lang/python MODULE but
# we do not want to build/run_depends on python
MODPY_VERSION= 2.5
pre-configure:
	perl -pi -e 's,/usr/bin/env python,${LOCALBASE}/bin/python${MODPY_VERSION},' \
		${WRKSRC}/gtk/gtk-builder-convert

.include <bsd.port.mk>
