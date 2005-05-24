# $OpenBSD: Makefile,v 1.21 2005/05/24 21:26:17 marcm Exp $

COMMENT=		"general-purpose utility library"
COMMENT-docs=           "glib2 documentation"

VERSION=		2.6.4
DISTNAME=		glib-${VERSION}
PKGNAME=		glib2-${VERSION}
PKGNAME-docs=           glib2-docs-${VERSION}
CATEGORIES=		devel

HOMEPAGE=		http://www.gtk.org
MAINTAINER=		Marc Matteo <marcm@openbsd.org>

# LGPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=		ftp://ftp.gtk.org/pub/gtk/v2.6/
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
CONFIGURE_STYLE=	gnu
CONFIGURE_ARGS+=	${CONFIGURE_SHARED}
CONFIGURE_ARGS+=	--enable-static
CONFIGURE_ENV=		CPPFLAGS="-I${LOCALBASE}/include" \
			LIBS="-L${LOCALBASE}/lib"

.include <bsd.port.mk>
