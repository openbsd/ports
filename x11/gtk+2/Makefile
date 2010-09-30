# $OpenBSD: Makefile,v 1.114 2010/09/30 07:18:15 ajacoutot Exp $

SHARED_ONLY=	Yes

COMMENT-main=	multi-platform graphical toolkit
COMMENT-docs=	gtk+2 documentation
COMMENT-cups=	gtk+2 CUPS print backend

V=		2.22.0
DISTNAME=	gtk+-${V}

PKGNAME-main=	gtk+2-${V}
PKGNAME-docs=	gtk+2-docs-${V}
PKGNAME-cups=	gtk+2-cups-${V}

CATEGORIES=	x11 devel

SHARED_LIBS +=  gdk-x11-2.0          2200.0   # 2200.0
SHARED_LIBS +=  gtk-x11-2.0          2200.0   # 2200.0
SHARED_LIBS +=  gailutil             26.0     # 18.1

HOMEPAGE=	http://www.gtk.org/

MAINTAINER=	Antoine Jacoutot <ajacoutot@openbsd.org>

# LGPLv2
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

WANTLIB += X11 Xau Xcomposite Xcursor Xdamage Xdmcp Xext Xfixes
WANTLIB += Xi Xinerama Xrandr Xrender cairo expat fontconfig freetype
WANTLIB += glitz gthread-2.0 m pcre pixman-1 pthread-stubs xcb
WANTLIB += xcb-render xcb-render-util z gdk_pixbuf-2.0

MASTER_SITES=	${MASTER_SITE_GNOME:=sources/gtk+/${V:C/^([0-9]+\.[0-9]+).*/\1/}/}
EXTRACT_SUFX=	.tar.bz2

MULTI_PACKAGES=	-main -docs -cups
# XXX don't pull in print/cups on these arch; build fails with binutils 2.15
NOT_FOR_ARCHS-cups= mips64 mips64el

MODULES=	devel/gettext \
		lang/python

.if ! ${MACHINE_ARCH:Mmips64*}
BUILD_DEPENDS=	::print/cups
.endif

RUN_DEPENDS=	::x11/hicolor-icon-theme \
		::misc/shared-mime-info

LIB_DEPENDS-main= ${LIB_DEPENDS} \
		:glib2->=2.26.0:devel/glib2 \
		::devel/pango \
		::devel/atk \
		::graphics/gdk-pixbuf2

WANTLIB-main += ${WANTLIB} c pthread glib-2.0 gmodule-2.0 gobject-2.0
WANTLIB-main += gio-2.0 pango-1.0 pangocairo-1.0 pangoft2-1.0 atk-1.0
WANTLIB-main += png

MODPY_BUILDDEP=	No
MODPY_RUNDEP=	No

LIB_DEPENDS-docs=
RUN_DEPENDS-docs=
WANTLIB-docs +=
PKG_ARCH-docs=	*

LIB_DEPENDS-cups= ${LIB_DEPENDS} \
		::print/cups \
		::${BASE_PKGPATH},-main
WANTLIB-cups += ${WANTLIB}
WANTLIB-cups += asn1 atk-1.0 crypto gio-2.0 glib-2.0 gmodule-2.0 gobject-2.0
WANTLIB-cups += gssapi krb5 pango-1.0 pangocairo-1.0 pangoft2-1.0 png
WANTLIB-cups += ssl cups gdk-x11-2.0 gdk_pixbuf-2.0 gtk-x11-2.0

USE_X11=	Yes
USE_GMAKE=	Yes
USE_LIBTOOL=	Yes
REGRESS_IS_INTERACTIVE= x11

CONFIGURE_STYLE= gnu
CONFIGURE_ENV=	CPPFLAGS="-I${X11BASE}/include/freetype2/ \
			-I${LOCALBASE}/include \
			-I${LOCALBASE}/include/libpng" \
		LDFLAGS="-L${LOCALBASE}/lib"
CONFIGURE_ARGS=	${CONFIGURE_SHARED} \
		--disable-gtk-doc \
		--disable-introspection \
		--enable-man=no \
		--with-xinput=yes \
		--disable-papi \
		--disable-silent-rules

FAKE_FLAGS=	sysconfdir=${PREFIX}/share/examples/gtk+2

pre-configure:
	perl -pi -e 's,/usr/bin/env python,${MODPY_BIN},' \
		${WRKSRC}/gtk/gtk-builder-convert

.include <bsd.port.mk>
