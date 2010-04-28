# $OpenBSD: Makefile,v 1.8 2010/04/28 17:15:45 jasper Exp $

# Look at cairo-related regression failure.
# and cairo/cairo.h: No such file or directory during build.

COMMENT=		GObject Introspection

GNOME_VERSION=		0.6.10
GNOME_PROJECT=		gobject-introspection
PKGNAME=		${DISTNAME}p0
CATEGORIES=		devel

SHARED_LIBS +=  girepository-1.0     0.0      # .0.0
SHARED_LIBS +=  girepository-everything-1.0 0.0      # .1.0
SHARED_LIBS +=  girepository-gimarshallingtests-1.0 0.0      # .1.0

HOMEPAGE=		http://live.gnome.org/GObjectIntrospection

# Library: LGPLv2+
# Tools: GPLv2+
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=	Yes

MODULES=		devel/gettext \
			lang/python \
			x11/gnome

WANTLIB += X11 Xau Xdmcp Xrender c expat fontconfig freetype glitz
WANTLIB += m pcre pixman-1 png pthread pthread-stubs xcb xcb-render
WANTLIB += xcb-render-util z

LIB_DEPENDS=		gio-2.0,glib-2.0,gmodule-2.0,gobject-2.0,gthread-2.0::devel/glib2 \
			ffi::devel/libffi \
			cairo::graphics/cairo
BUILD_DEPENDS=		::devel/bison

USE_LIBTOOL=		Yes

YACC=			bison

CONFIGURE_STYLE=	gnu
CONFIGURE_ARGS+=	${CONFIGURE_SHARED} \
			--disable-gtk-doc
CONFIGURE_ENV=		CPPFLAGS="-I${LOCALBASE}/include" \
			LDFLAGS="-L${LOCALBASE}/lib"

CFLAGS+=		-pthread

SUBST_VARS+=		MODPY_SITEPKG LIBTOOL

SUBST_SO=	gir/GLib-2.0.gir gir/GObject-2.0.gir gir/GModule-2.0 \
		gir/Gio-2.0.gir

pre-configure:
	${SUBST_CMD} ${WRKSRC}/Makefile.introspection \
		${WRKSRC}/gir/Makefile.in \
		${WRKSRC}/tests/scanner/Makefile.in \
		${WRKSRC}/tests/offsets/Makefile.in \
		${WRKSRC}/tools/g-ir-scanner.in \
		${WRKSRC}/gir/Everything-1.0-expected.gir
.for i in  ${SUBST_SO}
	perl -pi -e 's,\.so\.[0-9],\.so,g' ${WRKSRC}/${i}
.endfor

.include <bsd.port.mk>
