# $OpenBSD: Makefile,v 1.5 2002/09/26 18:36:53 pvalchev Exp $

COMMENT=		"Bomberman clone for GNOME"

VERSION=		0.6.6
DISTNAME=		bombermaze-${VERSION}
CATEGORIES=		games x11

MAINTAINER=		Jim Geovedi <jim@corebsd.or.id>

HOMEPAGE=		http://www.nongnu.org/bombermaze/

# GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=		http://savannah.nongnu.org/download/bombermaze/

MODULES=	gettext
LIB_DEPENDS=	gdk_pixbuf.2::graphics/gdk-pixbuf \
		audiofile.0::devel/libaudiofile \
		glib.1,gmodule.1::devel/glib \
	 	gif.5::graphics/libungif \
		art_lgpl.so.4,gnome.36,gnomeui.46,gnomesupport.0::x11/gnome/libs

USE_LIBTOOL=		Yes
USE_GMAKE=		Yes
USE_X11=		Yes
NO_REGRESS=		Yes

CONFIGURE_STYLE=	gnu
CONFIGURE_ENV=		CPPFLAGS="-I${LOCALBASE}/include" \
			LDFLAGS="-L${LOCALBASE}/lib" \
			LIBS="-pthread"


.include <bsd.port.mk>
