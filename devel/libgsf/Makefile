# $OpenBSD: Makefile,v 1.2 2003/12/31 06:58:06 brad Exp $

COMMENT=		"GNOME Structured File library"
COMMENT-gnome=		"GNOME specific extensions to libgsf"

VERSION=		1.8.2
DISTNAME=		libgsf-${VERSION}
PKGNAME-gnome=		libgsf-gnome-${VERSION}
CATEGORIES=		devel

HOMEPAGE=		http://www.gnome.org/

MAINTAINER=		Marc Matteo <marcm@openbsd.org>

# LGPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=		${MASTER_SITE_GNOME:=sources/libgsf/1.8/}
EXTRACT_SUFX=		.tar.bz2

BUILD_DEPENDS=		:pkgconfig->=0.14.0:devel/pkgconfig

SEPARATE_BUILD= 	concurrent
USE_GMAKE=		Yes
CONFIGURE_STYLE=	gnu
CONFIGURE_ARGS+=	${CONFIGURE_SHARED}
CONFIGURE_ARGS+=	--disable-gtk-doc
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
LIB_DEPENDS+=   gnomevfs-2::x11/gnome/vfs2 \
                gsf-1::devel/libgsf
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
