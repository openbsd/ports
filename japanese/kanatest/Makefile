# $OpenBSD: Makefile,v 1.3 2006/06/13 13:25:58 bernd Exp $

COMMENT=	"beginner's drill tool to learn Japanese kana characters" 

DISTNAME=	kanatest-0.3.6
PKGNAME=	${DISTNAME}p0
CATEGORIES=	japanese

MAINTAINER=	Mathieu Sauve-Frankel <msf@openbsd.org> 

# GPL
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
WANTLIB=	c m freetype X11 fontconfig  cairo \
		atk-1.0.0.0 glib-2.0.0.0 gmodule-2.0.0.0 gobject-2.0.0.0 \
		pango-1.0.0.0 pangoft2-1.0.0.0 pangocairo-1.0.0.0

MASTER_SITES=	http://clay.ll.pl/download/

MODULES=	devel/gettext

BUILD_DEPENDS=	::devel/pkgconfig
LIB_DEPENDS=	gdk-x11-2.0.600.0,gdk_pixbuf-2.0.600.0,gtk-x11-2.0.600.0::x11/gtk+2 

CONFIGURE_STYLE= gnu
CONFIGURE_ENV=  CPPFLAGS="-I${LOCALBASE}/include" \
                LDFLAGS="-L${LOCALBASE}/lib"

NO_REGRESS=	Yes

.include <bsd.port.mk>
