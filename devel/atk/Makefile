# $OpenBSD: Makefile,v 1.5 2003/04/17 06:05:45 marcm Exp $

COMMENT=		"accessibility toolkit used by gtk+"

DISTNAME=		atk-1.2.2
CATEGORIES=		devel

HOMEPAGE=		http://www.gtk.org
MAINTAINER=		Marc Matteo <marcm@openbsd.org>

# LGPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=		${MASTER_SITE_GNOME:=sources/atk/1.2/}
EXTRACT_SUFX=           .tar.bz2

MODULES=		gettext
LIB_DEPENDS=		glib-2.0.0.0,gmodule-2.0.0.0,gobject-2.0.0.0::devel/glib2
BUILD_DEPENDS=          :pkgconfig-*:devel/pkgconfig

# library version (major:minor)
LIBATK_VERSION=		0:5

SEPARATE_BUILD=		simple
USE_GMAKE=		Yes
CONFIGURE_STYLE=	gnu
CONFIGURE_ARGS+=	${CONFIGURE_SHARED}
CONFIGURE_ARGS+=	--enable-static
MAKE_ENV=		LIBATK_VERSION="${LIBATK_VERSION}"

.include <bsd.port.mk>
