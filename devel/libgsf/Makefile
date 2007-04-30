# $OpenBSD: Makefile,v 1.17 2007/04/30 15:11:03 espie Exp $

COMMENT-main=		"GNOME Structured File library"
COMMENT-gnome=		"GNOME specific extensions to libgsf"

VERSION=		1.11.1
DISTNAME=		libgsf-${VERSION}
PKGNAME-main=		${DISTNAME}p3
PKGNAME-gnome=		libgsf-gnome-${VERSION}p4
SHARED_LIBS +=	gsf-1                12.1     # .12.1
SHARED_LIBS +=	gsf-gnome-1          12.1     # .12.1

CATEGORIES=		devel

HOMEPAGE=		http://www.gnome.org/

MAINTAINER=		Marc Matteo <marcm@openbsd.org>

# LGPL

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
WANTLIB=		m z

MASTER_SITES=		${MASTER_SITE_GNOME:=sources/libgsf/1.11/}
EXTRACT_SUFX=		.tar.bz2

MODULES=		devel/gettext

LIB_DEPENDS=		bz2.>=10.2::archivers/bzip2 \
			xml2.>=8.4::textproc/libxml \
			glib-2.0.>=0.11,gobject-2.0.>=0.11::devel/glib2

USE_GMAKE=		Yes
USE_LIBTOOL=		Yes
CONFIGURE_STYLE=	gnu
CONFIGURE_ARGS+=	${CONFIGURE_SHARED}
CONFIGURE_ARGS+=	--disable-gtk-doc
CONFIGURE_ARGS+=	--with-bz2
CONFIGURE_ENV=		CPPFLAGS="-I${LOCALBASE}/include" \
			LDFLAGS="-L${LOCALBASE}/lib"

PSEUDO_FLAVORS=	no_gnome
FLAVOR?=

MULTI_PACKAGES= -main
.if !${FLAVOR:L:Mno_gnome}
MULTI_PACKAGES+= -gnome
.endif

LIB_DEPENDS-gnome=${LIB_DEPENDS} \
		gnomevfs-2.>=1800:gnome-vfs2->=2.18:x11/gnome/vfs2 \
		bonobo-2,bonobo-activation::x11/gnome/libbonobo \
		gsf-1::${BUILD_PKGPATH}
WANTLIB-gnome=	crypto ssl ORBitCosNaming-2 \
		ORBit-2 gmodule-2.0 \
		gthread-2.0 gconf-2 m z dbus-1 dbus-glib-1 util

.if ${MULTI_PACKAGES:M-gnome}
CONFIGURE_ARGS+= --with-gnome
.else
CONFIGURE_ARGS+= --without-gnome
.endif

.include <bsd.port.mk>
