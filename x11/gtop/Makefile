# $OpenBSD: Makefile,v 1.14 2006/01/08 02:49:47 brad Exp $

COMMENT=		"GNOME version of top"

DISTNAME=		gtop-1.0.13
CATEGORIES=		x11

MAINTAINER=		Jim Geovedi <jim@corebsd.or.id>
HOMEPAGE=		http://www.gnome.org

MASTER_SITES=		${MASTER_SITE_GNOME:=sources/gtop/1.0/}

LIB_DEPENDS=		gnome.36,art_lgpl,gnomeui::x11/gnome/libs \
			gtop,gtop_common,gtop_sysdeps::devel/libgtop,gnome

# GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
WANTLIB=		ICE SM X11 Xext Xi audiofile c esd gdk gdk_imlib glib \
			gmodule gnomesupport gtk iconv intl jpeg m png tiff \
			ungif z

USE_X11=		Yes
USE_LIBTOOL=		Yes
CONFIGURE_STYLE= 	gnu
CONFIGURE_ARGS+= 	${CONFIGURE_SHARED}
CONFIGURE_ENV=  	CPPFLAGS="-I${LOCALBASE}/include" \
			LDFLAGS="-L${LOCALBASE}/lib"

.include <bsd.port.mk>
