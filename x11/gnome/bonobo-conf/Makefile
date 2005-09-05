# $OpenBSD: Makefile,v 1.8 2005/09/05 20:05:02 marcm Exp $

COMMENT=		"bonobo configuration system"

DISTNAME=		bonobo-conf-0.16
CATEGORIES=    		x11/gnome
HOMEPAGE=		http://developer.gnome.org/arch/component/bonobo.html

#GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
WANTLIB=		IIOP ORBit ORBitCosNaming ORBitutil audiofile esd \
			gdk gdk_imlib gdk_pixbuf glib gmodule gnome \
			gnomesupport gnomeui gtk jpeg oaf ungif xml ICE SM \
			X11 Xext Xi art_lgpl c m png tiff wrap z

MASTER_SITES=		${MASTER_SITE_GNOME:=sources/bonobo-conf/0.16/}

MODULES=		devel/gettext

LIB_DEPENDS=		bonobo.2,bonobox.2::x11/gnome/bonobo \
			gconf-1.1,gconf-gtk-1.1::devel/gconf

SEPARATE_BUILD=		concurrent
USE_X11=		Yes
USE_GMAKE=		Yes

CONFIGURE_STYLE=	gnu
CONFIGURE_ARGS+=	${CONFIGURE_SHARED}
CONFIGURE_ARGS+=	--disable-oaftest
CONFIGURE_ENV=		CPPFLAGS="-I${LOCALBASE}/include" \
			LDFLAGS="-L${LOCALBASE}/lib"

.include <bsd.port.mk>
