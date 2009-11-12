# $OpenBSD: Makefile,v 1.2 2009/11/12 21:48:18 jasper Exp $

COMMENT=		GObject Introspection

GNOME_VERSION=		0.6.5
GNOME_PROJECT=		gobject-introspection
PKGNAME=		${DISTNAME}p0
CATEGORIES=		devel

SHARED_LIBS +=  girepository-1.0        0.0      # .0.0
SHARED_LIBS +=  girepository-everything-1.0        0.0  # .1.0

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

WANTLIB += c pcre

LIB_DEPENDS=		gio-2.0,glib-2.0,gmodule-2.0,gobject-2.0::devel/glib2 \
			ffi::devel/libffi
BUILD_DEPENDS=		::devel/bison

USE_LIBTOOL=		Yes

YACC=			bison

CONFIGURE_STYLE=	gnu
CONFIGURE_ARGS+=	${CONFIGURE_SHARED} \
			--disable-gtk-doc
CONFIGURE_ENV=		CPPFLAGS="-I${LOCALBASE}/include" \
			LDFLAGS="-L${LOCALBASE}/lib"

SUBST_VARS+=		MODPY_SITEPKG

# Ugly hack to fix build. See upstream Bugzilla #596224.
pre-configure:
	${SUBST_CMD} ${WRKSRC}/gir/Makefile.in \
		${WRKSRC}/giscanner/Makefile.in \
		${WRKSRC}/tools/g-ir-scanner.in

.include <bsd.port.mk>
