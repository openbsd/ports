# $OpenBSD: Makefile,v 1.2 2002/09/11 20:32:06 danh Exp $

COMMENT=		"Bomberman clone for GNOME"

VERSION=		0.6.6
DISTNAME=		bombermaze-${VERSION}
CATEGORIES=		games x11
NEED_VERSION=		1.531

MAINTAINER=		Jim Geovedi <jim@corebsd.or.id>

HOMEPAGE=		http://www.freesoftware.fsf.org/bombermaze/

# GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=		http://freesoftware.fsf.org/download/bombermaze/

MODULES=	gettext
LIB_DEPENDS=	gdk_pixbuf::graphics/gdk-pixbuf \
		audiofile::devel/libaudiofile \
		glib.1,gmodule.1::devel/glib \
	 	gif.5::graphics/libungif

USE_LIBTOOL=		Yes
USE_GMAKE=		Yes
USE_X11=		Yes
NO_REGRESS=		Yes

CONFIGURE_STYLE=	gnu
CONFIGURE_ENV=		CPPFLAGS="${CPPFLAGS} -I${LOCALBASE}/include" \
			LDFLAGS="-L${LOCALBASE}/lib" \
			LIBS="-pthread"


.include <bsd.port.mk>
