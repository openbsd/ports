# $OpenBSD: Makefile,v 1.14 2006/10/28 11:19:21 espie Exp $

COMMENT=		"GNOME Structured File library"
COMMENT-gnome=		"GNOME specific extensions to libgsf"

VERSION=		1.11.1
DISTNAME=		libgsf-${VERSION}
PKGNAME=		${DISTNAME}p2
PKGNAME-gnome=		libgsf-gnome-${VERSION}p2
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

BUILD_DEPENDS=		:pkgconfig->=0.14.0:devel/pkgconfig

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

MULTI_PACKAGES=
.if !${FLAVOR:L:Mno_gnome}
MULTI_PACKAGES+= -gnome
.endif
SUBPACKAGE?=

.if defined(PACKAGING)
. if ${SUBPACKAGE} == "-gnome"
LIB_DEPENDS=	gnomevfs-2::x11/gnome/vfs2 \
		gsf-1::devel/libgsf
WANTLIB+=	crypto popt ssl bz2 ORBitCosNaming-2 \
		ORBit-2 bonobo-2 bonobo-activation gmodule-2.0 \
		gthread-2.0 gconf-2 glib-2.0 gobject-2.0 xml2
. endif
.else
. if ${MULTI_PACKAGES:M-gnome}
LIB_DEPENDS+=   gnomevfs-2::x11/gnome/vfs2
. endif
.endif

.if ${MULTI_PACKAGES:M-gnome}
CONFIGURE_ARGS+= --with-gnome
.else
CONFIGURE_ARGS+= --without-gnome
.endif

.include <bsd.port.mk>
