# $OpenBSD: Makefile,v 1.10 2003/09/23 06:12:41 marcm Exp $

COMMENT=		"general-purpose utility library"
COMMENT-docs=           "glib2 documentation"

VERSION=		2.2.3
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

MASTER_SITES=		ftp://ftp.gtk.org/pub/gtk/v2.2/
EXTRACT_SUFX=           .tar.bz2

MULTI_PACKAGES=         -docs
SUBPACKAGE?=

.if ${SUBPACKAGE} != "-docs"
MODULES=		gettext
BUILD_DEPENDS=          :pkgconfig->=0.14:devel/pkgconfig
.endif

# library versions (major:minor)
OBSD_LIB_VERSION=	0:11

USE_GMAKE=		Yes
SEPARATE_BUILD=		simple
CONFIGURE_STYLE=	gnu
CONFIGURE_ARGS+=	${CONFIGURE_SHARED}
CONFIGURE_ARGS+=	--enable-static
CONFIGURE_ENV=		CPPFLAGS="-I${LOCALBASE}/include" \
			LIBS="-L${LOCALBASE}/lib"
MAKE_ENV=		OBSD_LIB_VERSION="${OBSD_LIB_VERSION}"

.include <bsd.port.mk>
