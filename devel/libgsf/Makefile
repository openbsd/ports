# $OpenBSD: Makefile,v 1.36 2009/05/24 10:56:55 ajacoutot Exp $

COMMENT-main=		GNOME Structured File library
COMMENT-gnome=		GNOME specific extensions to libgsf

GNOME_PROJECT=		libgsf
GNOME_VERSION=		1.14.14

PKGNAME-main=		${DISTNAME}
PKGNAME-gnome=		libgsf-gnome-${VERSION}

CATEGORIES=		devel

SHARED_LIBS+=		gsf-1		114.11
SHARED_LIBS+=		gsf-gnome-1	114.11

HOMEPAGE=		http://www.gnome.org/

MAINTAINER=		Jasper Lievisse Adriaanse <jasper@openbsd.org>, \
			Antoine Jacoutot <ajacoutot@openbsd.org>

# LGPL 2.1
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MULTI_PACKAGES=		-main -gnome

WANTLIB=		c m z pcre

MODULES=		devel/gettext \
			lang/python \
			x11/gnome

BUILD_DEPENDS=  	:py-gtk2->=2.10:x11/py-gtk2 \
			:popt-*:devel/popt
LIB_DEPENDS=		bz2.>=10.2::archivers/bzip2 \
			gio-2.0,glib-2.0,gmodule-2.0,gobject-2.0::devel/glib2 \
			xml2.>=8.4::textproc/libxml

CONFIGURE_STYLE=	gnu
CONFIGURE_ARGS+=	${CONFIGURE_SHARED} \
			--with-bz2 \
			--disable-schemas-install \
			--with-python \
			--with-gconf-schema-file-dir=${LOCALBASE}/share/schemas/libgsf
CONFIGURE_ENV=		CPPFLAGS="-I${LOCALBASE}/include" \
			LDFLAGS="-L${LOCALBASE}/lib"

MAKE_ENV+=		GCONF2_SCHEMAS_DIR="${LOCALBASE}/share/schemas/libgsf"

LIB_DEPENDS-gnome=	${LIB_DEPENDS} \
			gsf-1::${BUILD_PKGPATH} \
			gnomevfs-2.>=1800:gnome-vfs2->=2.18:x11/gnome/vfs2 \
			bonobo-2,bonobo-activation::x11/gnome/libbonobo
WANTLIB-gnome=		${WANTLIB} crypto ssl ORBit-2 ORBitCosNaming-2 \
			bonobo-activation gobject-2.0 gthread-2.0 util xml2 \
			bz2 dbus-1 dbus-glib-1 gconf-2 glib-2.0 gmodule-2.0

.include <bsd.port.mk>
