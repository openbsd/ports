# $OpenBSD: Makefile,v 1.12 2006/08/04 00:10:42 espie Exp $

COMMENT=		"lightweight HTML rendering/printing/editing engine"

DISTNAME=		gtkhtml-1.1.10
PKGNAME=		${DISTNAME}p2
CATEGORIES=    		www
SHARED_LIBS=		gtkhtml-1.1	3.5
MODGNU_SHARED_LIBS=	gtkhtml-1.1	''

HOMEPAGE=		http://www.gnome.org/

MAINTAINER=		Marc Matteo <marcm@openbsd.org>

# GPL/LGPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
WANTLIB=		ICE IIOP ORBit ORBitCosNaming ORBitutil SM X11 Xext \
			Xi art_lgpl audiofile c esd freetype gconf-1 \
			gconf-gtk-1 gdk gdk_imlib gdk_pixbuf glib gmodule \
			gnome wrap xml z gnomeprint gnomesupport \
			gnomeui gnorba gtk jpeg m oaf png popt tiff ungif

MASTER_SITES=		${MASTER_SITE_GNOME:=sources/gtkhtml/1.1/}
EXTRACT_SUFX=		.tar.bz2

MODULES=		devel/gettext

LIB_DEPENDS=		bonobo.>=2,bonobox.>=2::x11/gnome/bonobo \
			capplet::x11/gnome/controlcenter \
			gal.>=22::devel/gal \
			ghttp.>=1::www/libghttp \
			glade.>=5,glade-gnome.>=5:libglade-*-gnome:devel/libglade,gnome \
			gnomecanvaspixbuf.>=1::graphics/gdk-pixbuf,-gnome

USE_X11=		Yes
USE_GMAKE=		Yes
USE_LIBTOOL=		Yes

CONFIGURE_STYLE=	gnu
CONFIGURE_ARGS+=        ${CONFIGURE_SHARED}
CONFIGURE_ARGS+=	--with-bonobo
CONFIGURE_ARGS+= 	--with-gconf
CONFIGURE_ARGS+= 	--disable-gtk-doc
CONFIGURE_ENV=		CPPFLAGS="-I${LOCALBASE}/include" \
			LDFLAGS="-L${LOCALBASE}/lib"

.include <bsd.port.mk>
