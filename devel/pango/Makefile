# $OpenBSD: Makefile,v 1.10 2004/11/24 00:11:03 espie Exp $

COMMENT=		"library for layout and rendering of text"

DISTNAME=		pango-1.4.1
CATEGORIES=		devel x11

HOMEPAGE=		http://www.gtk.org
MAINTAINER=		Marc Matteo <marcm@openbsd.org>

# LGPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
WANTLIB=		X11 Xft Xrender c fontconfig freetype iconv intl

MASTER_SITES=		ftp://ftp.gtk.org/pub/gtk/v2.4/
EXTRACT_SUFX=           .tar.bz2

LIB_DEPENDS=		glib-2.0.400.0,gmodule-2.0.400.0,gobject-2.0.400.0::devel/glib2
BUILD_DEPENDS=          :pkgconfig-*:devel/pkgconfig

USE_X11=		Yes
USE_GMAKE=		Yes

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
