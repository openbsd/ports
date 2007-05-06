# $OpenBSD: Makefile,v 1.18 2007/05/06 11:32:34 jasper Exp $

COMMENT-main=		"GNOME Structured File library"
COMMENT-gnome=		"GNOME specific extensions to libgsf"

VERSION=		1.14.3
DISTNAME=		libgsf-${VERSION}
PKGNAME-main=		${DISTNAME}
PKGNAME-gnome=		libgsf-gnome-${VERSION}
SHARED_LIBS +=  gsf-1                114.3     # .114.3
SHARED_LIBS +=  gsf-gnome-1          114.3     # .114.3

CATEGORIES=		devel

HOMEPAGE=		http://www.gnome.org/

MAINTAINER=		Marc Matteo <marcm@openbsd.org>

# LGPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
WANTLIB=		c m z

MASTER_SITES=		${MASTER_SITE_GNOME:=sources/libgsf/1.14/}
EXTRACT_SUFX=		.tar.bz2

MODULES=		devel/gettext \
			lang/python

BUILD_DEPENDS=  	:p5-XML-Parser-*:textproc/p5-XML-Parser \
			:py-gtk2-*:x11/py-gtk2 # 2.10.0 is requested..
LIB_DEPENDS=		bz2.>=10.2::archivers/bzip2 \
			glib-2.0.>=0.12,gobject-2.0.>=0.12::devel/glib2 \
			xml2.>=8.4::textproc/libxml

USE_GMAKE=		Yes
USE_LIBTOOL=		Yes
CONFIGURE_STYLE=	gnu
CONFIGURE_ARGS+=	${CONFIGURE_SHARED}
CONFIGURE_ARGS+=	--with-bz2 \
			--disable-schemas-install \
			--with-python \
			--with-gconf-schema-file-dir=${LOCALBASE}/share/schemas/libgsf
CONFIGURE_ENV=		CPPFLAGS="-I${LOCALBASE}/include" \
			LDFLAGS="-L${LOCALBASE}/lib" \
			PYTHON="${MODPY_BIN}"

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
.else
CONFIGURE_ARGS+=	--without-gnome
.endif

.include <bsd.port.mk>
