# $OpenBSD: Makefile,v 1.4 2003/04/17 05:58:47 marcm Exp $

COMMENT=		"library for layout and rendering of text"

DISTNAME=		pango-1.2.1
CATEGORIES=		devel x11

HOMEPAGE=		http://www.gtk.org
MAINTAINER=		Marc Matteo <marcm@openbsd.org>

# LGPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=		ftp://ftp.gtk.org/pub/gtk/v2.2/
EXTRACT_SUFX=           .tar.bz2

LIB_DEPENDS=		glib-2.0.0.8,gmodule-2.0.0.8,gobject-2.0.0.8::devel/glib2
BUILD_DEPENDS=          :pkgconfig-*:devel/pkgconfig

# library versions (major:minor)
LIBPANGO_VERSION=	0:7
LIBPANGOFT2_VERSION=	0:7
LIBPANGOX_VERSION=	0:7
LIBPANGOXFT_VERSION=	0:7

SEPARATE_BUILD=		concurrent
USE_X11=		Yes
USE_GMAKE=		Yes

CONFIGURE_STYLE=	gnu
CONFIGURE_ARGS+=	${CONFIGURE_SHARED}
CONFIGURE_ARGS+=	--enable-static
CONFIGURE_ARGS+=	--without-qt
CONFIGURE_ENV=		CPPFLAGS="-I${X11BASE}/include" \
			PKG_CONFIG_PATH="${LOCALBASE}/lib/pkgconfig:${X11BASE}/lib/pkgconfig"
MAKE_ENV=		LIBPANGO_VERSION="${LIBPANGO_VERSION}" \
			LIBPANGOFT2_VERSION="${LIBPANGOFT2_VERSION}" \
			LIBPANGOX_VERSION="${LIBPANGOX_VERSION}" \
			LIBPANGOXFT_VERSION="${LIBPANGOXFT_VERSION}"

post-install:
	@${INSTALL_DATA_DIR} ${PREFIX}/share/examples/pango; \
	cp -Rp ${WRKINST}/${SYSCONFDIR}/* ${PREFIX}/share/examples/pango/

.include <bsd.port.mk>
