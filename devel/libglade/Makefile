# $OpenBSD: Makefile,v 1.25 2007/06/01 15:21:16 jasper Exp $

COMMENT=		"library for loading GLADE interface files at runtime"

DISTNAME=		libglade-0.17
PKGNAME=		${DISTNAME}p3
SHARED_LIBS +=	glade                5.0      # .5.0

CATEGORIES=		devel

HOMEPAGE=		http://www.gnome.org

MASTER_SITES=		${MASTER_SITE_GNOME:=sources/libglade/0.17/}

# GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
WANTLIB=		X11 Xau Xdmcp Xext Xi glib gmodule m z

MODULES=		devel/gettext
LIB_DEPENDS=		xml.>=9::textproc/libxml1 \
			gtk.>=1.2,gdk.>=1.2::x11/gtk+

SEPARATE_BUILD=		concurrent
USE_X11=		Yes
USE_LIBTOOL=		Yes
CONFIGURE_STYLE= 	gnu
CONFIGURE_ARGS+= 	${CONFIGURE_SHARED}
CONFIGURE_ARGS+= 	--disable-gnomedb \
			--without-gnome
CONFIGURE_ENV=		CPPFLAGS="-I${LOCALBASE}/include" \
			LDFLAGS="-L${LOCALBASE}/lib"

.include <bsd.port.mk>
