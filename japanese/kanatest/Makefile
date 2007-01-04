# $OpenBSD: Makefile,v 1.8 2007/01/04 20:19:54 steven Exp $

COMMENT=	"beginner's drill tool to learn Japanese kana characters" 

DISTNAME=	kanatest-0.3.6
PKGNAME=	${DISTNAME}p1
CATEGORIES=	japanese

MAINTAINER=	Mathieu Sauve-Frankel <msf@openbsd.org> 

# GPL
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
WANTLIB=	c m freetype X11 Xext Xrender fontconfig z cairo \
		atk-1.0 glib-2.0 gmodule-2.0 gobject-2.0 glitz png \
		pango-1.0 pangoft2-1.0 pangocairo-1.0

MASTER_SITES=	http://clay.ll.pl/download/

MODULES=	devel/gettext

LIB_DEPENDS=	gdk-x11-2.0.>=600.0,gdk_pixbuf-2.0.>=600.0,gtk-x11-2.0.>=600.0::x11/gtk+2 

CONFIGURE_STYLE= gnu
CONFIGURE_ENV=  CPPFLAGS="-I${LOCALBASE}/include" \
                LDFLAGS="-L${LOCALBASE}/lib"

USE_X11=	Yes
NO_REGRESS=	Yes

.include <bsd.port.mk>
