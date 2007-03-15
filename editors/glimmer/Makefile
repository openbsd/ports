# $OpenBSD: Makefile,v 1.12 2007/03/15 11:30:07 jolan Exp $

COMMENT=		"code editor for GNOME"

DISTNAME=		glimmer-1.2.1
PKGNAME=		glimmer-1.2.1p3
CATEGORIES=		editors x11

HOMEPAGE=		http://glimmer.sourceforge.net/

# GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
WANTLIB=		IIOP ORBit ORBitCosNaming ORBitutil \
			audiofile esd gconf-1 gconf-gtk-1 \
			gdk gdk_imlib gdk_pixbuf glib gmodule gnome \
			gnomesupport gnomeui gthread gtk jpeg oaf \
			popt ungif xml ICE SM X11 Xext Xi art_lgpl \
			c freetype m png pthread tiff wrap z

MASTER_SITES=		${MASTER_SITE_SOURCEFORGE:=glimmer/}

MODULES=		devel/gettext

LIB_DEPENDS=		gnomeprint.>=16::x11/gnome/print \
			gnomevfs::x11/gnome/vfs

SEPARATE_BUILD=		concurrent
USE_X11=                Yes
USE_GMAKE=		Yes

CONFIGURE_STYLE=        gnu
CONFIGURE_ARGS+=	--disable-python
CONFIGURE_ENV+=		CPPFLAGS="-I${LOCALBASE}/include" \
			LDFLAGS="-L${LOCALBASE}/lib"

.include <bsd.port.mk>
