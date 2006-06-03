# $OpenBSD: Makefile,v 1.18 2006/06/03 18:23:03 brad Exp $

COMMENT=		"library for layout and rendering of text"

DISTNAME=		pango-1.12.3
SHARED_LIBS=		pango-1.0	1200.3 \
			pangocairo-1.0	1200.3 \
			pangoft2-1.0	1200.3 \
			pangox-1.0	1200.3 \
			pangoxft-1.0	1200.3

CATEGORIES=		devel x11

HOMEPAGE=		http://www.gtk.org

# LGPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
WANTLIB=		X11 Xext Xft Xrender c fontconfig freetype \
			glitz iconv intl m png z

MASTER_SITES=		${MASTER_SITE_GNOME:=sources/pango/1.12/}
EXTRACT_SUFX=		.tar.bz2

LIB_DEPENDS=		glib-2.0.1000.0,gmodule-2.0.1000.0,gobject-2.0.1000.0::devel/glib2 \
			cairo.3::graphics/cairo
BUILD_DEPENDS=		:pkgconfig-*:devel/pkgconfig

USE_X11=		Yes
USE_GMAKE=		Yes
USE_LIBTOOL=		Yes

CONFIGURE_STYLE=	gnu
CONFIGURE_ARGS+=	${CONFIGURE_SHARED}
CONFIGURE_ARGS+=	--enable-static
CONFIGURE_ARGS+=	--without-qt
CONFIGURE_ENV=		CPPFLAGS="-I${X11BASE}/include" \
			PKG_CONFIG_PATH="${LOCALBASE}/lib/pkgconfig:${X11BASE}/lib/pkgconfig"

post-install:
	@${INSTALL_DATA_DIR} ${PREFIX}/share/examples/pango; \
	cp -Rp ${WRKINST}/${SYSCONFDIR}/pango/* ${PREFIX}/share/examples/pango/

.include <bsd.port.mk>

# Work around a fontconfig linking issue on static arches
.if defined(NO_SHARED_LIBS) && ${NO_SHARED_LIBS:L} == "yes"
PATCH_LIST=		patch-* sup-no_shared-*
.endif
