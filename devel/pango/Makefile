# $OpenBSD: Makefile,v 1.37 2009/09/18 10:21:53 ajacoutot Exp $

COMMENT=		library for layout and rendering of text

V=			1.24.5
DISTNAME=		pango-${V}

SHARED_LIBS += pango-1.0	   1801.0    # .2400.5
SHARED_LIBS += pangox-1.0	   1801.0    # .2400.5
SHARED_LIBS += pangoft2-1.0	   1801.0    # .2400.5
SHARED_LIBS += pangoxft-1.0	   1801.0    # .2400.5
SHARED_LIBS += pangocairo-1.0	   1801.0    # .2400.5

CATEGORIES=		devel x11

HOMEPAGE=		http://www.gtk.org/

# LGPLv2
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

WANTLIB=	X11 Xau Xdmcp Xft Xrender c expat fontconfig freetype \
		glitz m pcre pixman-1 png pthread-stubs xcb z

MASTER_SITES=		${MASTER_SITE_GNOME:=sources/pango/${V:C/^([0-9]+\.[0-9]+).*/\1/}/}
EXTRACT_SUFX=		.tar.bz2

MODULES=		devel/gettext

LIB_DEPENDS=		glib-2.0.>=1800.0,gmodule-2.0.>=1800.0,gobject-2.0.>=1800.0::devel/glib2 \
			cairo.>=9::graphics/cairo

USE_X11=		Yes
USE_GMAKE=		Yes
USE_LIBTOOL=		Yes

CONFIGURE_STYLE=	gnu
CONFIGURE_ARGS=		${CONFIGURE_SHARED}
CONFIGURE_ENV=		CPPFLAGS="-I${X11BASE}/include"

FAKE_FLAGS=		aliasdir=${PREFIX}/share/examples/pango \
			sysconfdir=${PREFIX}/share/examples

.include <bsd.port.mk>
