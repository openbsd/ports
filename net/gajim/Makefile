# $OpenBSD: Makefile,v 1.16 2007/05/06 19:09:24 alek Exp $

SHARED_ONLY=	Yes

COMMENT=	"jabber client written in pygtk"
DISTNAME=	gajim-0.11.1
PKGNAME=	${DISTNAME}p2
EXTRACT_SUFX=	.tar.bz2
CATEGORIES=	net x11
MASTER_SITES=	${HOMEPAGE}downloads/

HOMEPAGE=	http://www.gajim.org/

# GPL
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes

CONFIGURE_STYLE=gnu
CONFIGURE_ENV=	PYTHON=${MODPY_BIN} \
		CFLAGS="-I${LOCALBASE}/include" \
		LDFLAGS="-L${LOCALBASE}/lib"
CONFIGURE_ARGS=	--enable-gtkspell

USE_X11=	Yes
USE_GMAKE=	Yes
USE_LIBTOOL=	Yes
LIBTOOL_FLAGS=	--tag=disable-static

MODULES=	devel/gettext lang/python

BUILD_DEPENDS=	::textproc/intltool \
		${RUN_DEPENDS}
LIB_DEPENDS=	gtkspell::textproc/gtkspell
RUN_DEPENDS=	${MODPY_EXPAT_DEPENDS} \
		::net/py-dns \
		::databases/py-sqlite2 \
		::x11/py-gtk2 \
		:dbus-python-*:x11/dbus-python
WANTLIB=	X11 Xext Xss Xrender fontconfig freetype m z \
		aspell atk-1.0.>=1011.0 cairo gdk-x11-2.0.>=600.0 \
		gdk_pixbuf-2.0.>=600.0 glib-2.0.>=600.0 gmodule-2.0.>=600.0 \
		gobject-2.0.>=600.0 gtk-x11-2.0.>=600.0 pango-1.0.>=800.0 \
		pangocairo-1.0 pangoft2-1.0 png glitz Xau Xdmcp expat
WANTLIB += Xcursor Xfixes Xi Xinerama Xrandr

.include <bsd.port.mk>
