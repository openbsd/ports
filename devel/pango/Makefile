# $OpenBSD: Makefile,v 1.3 2002/12/23 04:57:56 marcm Exp $

COMMENT=		"library for layout and rendering of text"

DISTNAME=		pango-1.0.5
CATEGORIES=		devel x11

HOMEPAGE=		http://www.gtk.org
MAINTAINER=		Marc Matteo <marcm@openbsd.org>

# LGPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=		ftp://ftp.gtk.org/pub/gtk/v2.0/
EXTRACT_SUFX=           .tar.bz2

LIB_DEPENDS=		glib-2.0.0.0,gmodule-2.0.0.0,gobject-2.0.0.0::devel/glib2
BUILD_DEPENDS=          :pkgconfig-*:devel/pkgconfig

# library versions (major:minor)
LIBPANGO_VERSION=	0:5
LIBPANGOFT2_VERSION=	0:5
LIBPANGOX_VERSION=	0:5
LIBPANGOXFT_VERSION=	0:5

SEPARATE_BUILD=		concurrent
USE_X11=		Yes
USE_GMAKE=		Yes

CONFIGURE_STYLE=	gnu
CONFIGURE_ARGS+=	${CONFIGURE_SHARED}
CONFIGURE_ARGS+=	--enable-static
CONFIGURE_ARGS+=	--without-qt
CONFIGURE_ENV=		CPPFLAGS="-I${X11BASE}/include"
MAKE_ENV=		LIBPANGO_VERSION="${LIBPANGO_VERSION}" \
			LIBPANGOFT2_VERSION="${LIBPANGOFT2_VERSION}" \
			LIBPANGOX_VERSION="${LIBPANGOX_VERSION}" \
			LIBPANGOXFT_VERSION="${LIBPANGOXFT_VERSION}"

post-install:
	@${INSTALL_DATA_DIR} ${PREFIX}/share/examples/pango; \
	cp -Rp ${WRKINST}/${SYSCONFDIR}/* ${PREFIX}/share/examples/pango/

.include <bsd.port.mk>
