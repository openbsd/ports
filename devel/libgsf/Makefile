# $OpenBSD: Makefile,v 1.27 2008/06/03 16:34:43 jasper Exp $

COMMENT-main=		GNOME Structured File library
COMMENT-gnome=		GNOME specific extensions to libgsf

GNOME_PROJECT=		libgsf
GNOME_VERSION=		1.14.8
DISTNAME=		libgsf-${VERSION}
PKGNAME-main=		${DISTNAME}
PKGNAME-gnome=		libgsf-gnome-${VERSION}
SHARED_LIBS +=  gsf-1                114.8     # .114.8
SHARED_LIBS +=  gsf-gnome-1          114.8     # .114.8

CATEGORIES=		devel

HOMEPAGE=		http://www.gnome.org/

# LGPL 2.1
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

WANTLIB=		c m z pcre

MODULES=		devel/gettext \
			lang/python \
			x11/gnome

BUILD_DEPENDS=  	:py-gtk2->=2.10:x11/py-gtk2 \
			:popt-*:devel/popt
LIB_DEPENDS=		bz2.>=10.2::archivers/bzip2 \
			glib-2.0.>=0.12,gobject-2.0.>=0.12::devel/glib2 \
			xml2.>=8.4::textproc/libxml

AUTOCONF_VERSION =	2.61

USE_LIBTOOL=		Yes
CONFIGURE_STYLE=	autoconf
CONFIGURE_ARGS+=	${CONFIGURE_SHARED} \
			--with-bz2 \
			--disable-schemas-install \
			--with-python \
			--with-gconf-schema-file-dir=${LOCALBASE}/share/schemas/libgsf/
CONFIGURE_ENV=		CPPFLAGS="-I${LOCALBASE}/include" \
			LDFLAGS="-L${LOCALBASE}/lib" \
			PYTHON="${MODPY_BIN}"
MAKE_ENV+=		GCONF2_SCHEMAS_DIR="${LOCALBASE}/share/schemas/libgsf/"

PSEUDO_FLAVORS=		no_gnome
FLAVOR?=

MULTI_PACKAGES=		-main
.if !${FLAVOR:L:Mno_gnome}
MULTI_PACKAGES+=	-gnome
.endif

LIB_DEPENDS-gnome=	${LIB_DEPENDS} \
			gsf-1::${BUILD_PKGPATH} \
			gnomevfs-2.>=1800:gnome-vfs2->=2.18:x11/gnome/vfs2 \
			bonobo-2,bonobo-activation::x11/gnome/libbonobo
WANTLIB-gnome=		${WANTLIB} crypto ssl ORBit-2 ORBitCosNaming-2 \
			bonobo-activation gobject-2.0 gthread-2.0 util xml2 \
			bz2 dbus-1 dbus-glib-1 gconf-2 glib-2.0 gmodule-2.0

.if ${MULTI_PACKAGES:M-gnome}
CONFIGURE_ARGS+=	--with-gnome
#CONFIGURE_ARGS+=	--with-gvfs
.else
CONFIGURE_ARGS+=	--without-gnome \
			--without-gvfs
.endif

.include <bsd.port.mk>
