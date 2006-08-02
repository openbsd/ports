# $OpenBSD: Makefile,v 1.11 2006/08/02 09:36:20 espie Exp $

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
WANTLIB=		ICE SM X11 Xext Xi c esd gdk gdk_imlib gtk jpeg m \
			png pthread stdc++ tiff z

MASTER_SITES=		${HOMEPAGE}packages/

MODULES=	devel/gettext
LIB_DEPENDS=	gdk_pixbuf.>=2::graphics/gdk-pixbuf \
		audiofile::devel/libaudiofile \
		glib.>=1,gmodule.>=1::devel/glib \
	 	ungif.>=5::graphics/libungif \
		art_lgpl.>=4,gnome.>=36,gnomeui.>=46,gnomesupport::x11/gnome/libs

USE_LIBTOOL=		Yes
USE_GMAKE=		Yes
USE_X11=		Yes
NO_REGRESS=		Yes

CONFIGURE_STYLE=	gnu
CONFIGURE_ENV=		CPPFLAGS="-I${LOCALBASE}/include" \
			LDFLAGS="-L${LOCALBASE}/lib" \
			LIBS="-pthread"


.include <bsd.port.mk>
