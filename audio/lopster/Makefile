# $OpenBSD: Makefile,v 1.25 2004/05/22 19:54:10 jolan Exp $

COMMENT=	"full featured GTK Napster client"
DISTNAME=	lopster-1.2.0
PKGNAME=	${DISTNAME}p2
CATEGORIES=	audio
MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=lopster/}

HOMEPAGE=	http://lopster.sourceforge.net/

# GPL
PERMIT_PACKAGE_CDROM=   Yes
PERMIT_PACKAGE_FTP=     Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=   Yes

MODULES=	gettext

LIB_DEPENDS=    gtk.1.2,gdk.1.2::x11/gtk+ \
		ogg.4::audio/libogg

USE_GMAKE=	Yes
USE_X11=	Yes

CONFIGURE_STYLE=gnu
CONFIGURE_ARGS+=--with-zlib
CONFIGURE_ENV=	CPPFLAGS="-I${LOCALBASE}/include" \
		LDFLAGS="-L${LOCALBASE}/lib"

.include <bsd.port.mk>
