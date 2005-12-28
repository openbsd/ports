# $OpenBSD: Makefile,v 1.24 2005/12/28 06:15:28 marcm Exp $

COMMENT=		"general-purpose utility library"
COMMENT-docs=           "glib2 documentation"

VERSION=		2.8.4
DISTNAME=		glib-${VERSION}
PKGNAME=		glib2-${VERSION}
PKGNAME-docs=           glib2-docs-${VERSION}
CATEGORIES=		devel

HOMEPAGE=		http://www.gtk.org
MAINTAINER=		Marc Matteo <marcm@openbsd.org>

SHARED_LIBS=		glib-2.0    800.4 \
			gmodule-2.0 800.4 \
			gobject-2.0 800.4 \
			gthread-2.0 800.4
MODGNU_SHARED_LIBS=	glib-2.0    '' \
			gmodule-2.0 '' \
			gobject-2.0 '' \
			gthread-2.0 ''

# LGPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=		ftp://ftp.gtk.org/pub/gtk/v2.8/ \
			${MASTER_SITE_GNOME:=sources/glib/2.8/}
EXTRACT_SUFX=           .tar.bz2

MULTI_PACKAGES=         -docs
SUBPACKAGE?=

.if defined(PACKAGING) && ${SUBPACKAGE} == "-docs"
PKG_ARCH=		*
.else
MODULES=		devel/gettext
WANTLIB=		c
.endif

BUILD_DEPENDS=          :pkgconfig-*:devel/pkgconfig

# hppa's threads are broken (configure test gives Bus error)...
.if (${MACHINE_ARCH} == "hppa")
CONFIGURE_ARGS+=	--disable-threads
.endif

USE_GMAKE=		Yes
USE_LIBTOOL=		Yes
CONFIGURE_STYLE=	gnu
CONFIGURE_ARGS+=	${CONFIGURE_SHARED}
CONFIGURE_ARGS+=	--enable-static
CONFIGURE_ENV=		CPPFLAGS="-I${LOCALBASE}/include" \
			LDFLAGS="-L${LOCALBASE}/lib"

# Work around an issue in our libtool where -pthread is not listed as a 
# dependency
post-install:
	sed -e "s/dependency_libs='/dependency_libs='-pthread/" < ${PREFIX}/lib/libgthread-2.0.la > ${PREFIX}/lib/libgthread-2.0.temp && mv ${PREFIX}/lib/libgthread-2.0.temp ${PREFIX}/lib/libgthread-2.0.la

.include <bsd.port.mk>
