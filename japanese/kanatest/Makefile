# $OpenBSD: Makefile,v 1.1.1.1 2006/03/09 21:33:18 msf Exp $

COMMENT=	"beginner's drill tool to learn Japanese kana characters" 

DISTNAME=	kanatest-0.3.6
CATEGORIES=	japanese

MAINTAINER=	Mathieu Sauve-Frankel <msf@openbsd.org> 

#
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
WANTLIB=	c m Xft Xrender freetype X11 Xext fontconfig  \
		atk-1.0.0.0 glib-2.0.0.0 gmodule-2.0.0.0 gobject-2.0.0.0 \
		pango-1.0.0.0 pangoft2-1.0.0.0 pangox-1.0.0.0 pangoxft-1.0.0.0

MASTER_SITES=	http://clay.ll.pl/download/

MODULES=	devel/gettext

BUILD_DEPENDS=	::devel/pkgconfig
LIB_DEPENDS=	gdk-x11-2.0.600.0,gdk_pixbuf-2.0.600.0,gtk-x11-2.0.600.0::x11/gtk+2 

CONFIGURE_STYLE= gnu
CONFIGURE_ENV=  CPPFLAGS="-I${LOCALBASE}/include" \
                LDFLAGS="-L${LOCALBASE}/lib"

NO_REGRESS=	Yes

.include <bsd.port.mk>
