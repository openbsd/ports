# $OpenBSD: Makefile,v 1.6 2004/11/23 21:40:35 espie Exp $

COMMENT=		"library for loading GLADE interface files at runtime"
V=			2.4.0
DISTNAME=		libglade-${V}
PKGNAME=		libglade2-${V}
CATEGORIES=		devel

HOMEPAGE=		http://www.gnome.org
MAINTAINER=		Marc Matteo <marcm@openbsd.org>

MASTER_SITES=		${MASTER_SITE_GNOME:=sources/libglade/2.4/}
EXTRACT_SUFX=           .tar.bz2

# LGPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
WANTLIB=		X11 Xext Xft Xinerama Xrender \
			atk-1.0.0.0 fontconfig freetype \
			glib-2.0.0.0 gmodule-2.0.0.0 gobject-2.0.0.0 \
			m pango-1.0.0.0 pangox-1.0.0.0 pangoxft-1.0.0.0 z

MODULES=		devel/gettext
BUILD_DEPENDS=		:pkgconfig-*:devel/pkgconfig
LIB_DEPENDS=		gdk-x11-2.0.0.0,gdk_pixbuf-2.0.0.0,gtk-x11-2.0.0.0::x11/gtk+2 \
			xml2.7::textproc/libxml

SEPARATE_BUILD=		concurrent
USE_X11=		Yes
USE_GMAKE=		Yes
CONFIGURE_STYLE= 	gnu
CONFIGURE_ARGS+= 	${CONFIGURE_SHARED}
CONFIGURE_ENV=          CPPFLAGS="-I${LOCALBASE}/include" \
                        LDFLAGS="-L${LOCALBASE}/lib"

# Build the libglade-convert script even if we don't have Python.
# Other ports that need it will have to have a python-expat *_DEPENDS.
post-install:
	@sed 's,@PYTHON@,${LOCALBASE}/bin/python,' ${WRKSRC}/libglade-convert.in > ${PREFIX}/bin/libglade-convert

.include <bsd.port.mk>
