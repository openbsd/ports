# $OpenBSD: Makefile,v 1.21 2007/11/25 15:17:20 jasper Exp $

SHARED_ONLY=	Yes

COMMENT=	jabber client written in pygtk
DISTNAME=	gajim-0.11.3
CATEGORIES=	net x11

MASTER_SITES=	${HOMEPAGE}/downloads/
EXTRACT_SUFX=	.tar.bz2

HOMEPAGE=	http://www.gajim.org/

MAINTAINER=	Simon Kuhnle <simon@blarzwurst.de>

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

MODULES=	devel/gettext \
		lang/python

BUILD_DEPENDS=	::textproc/intltool \
		${RUN_DEPENDS}
LIB_DEPENDS=	gtkspell::textproc/gtkspell
RUN_DEPENDS=	${MODPY_EXPAT_DEPENDS} \
		::databases/py-sqlite2 \
		::devel/desktop-file-utils \
		::net/py-dns \
		:dbus-python-*:x11/dbus-python \
		::x11/py-gtk2
WANTLIB=	X11 Xcomposite Xdamage Xext Xss Xrender fontconfig freetype \
		m z aspell atk-1.0.>=1011.0 cairo gdk-x11-2.0.>=600.0 pcre \
		gdk_pixbuf-2.0.>=600.0 glib-2.0.>=600.0 gmodule-2.0.>=600.0 \
		gobject-2.0.>=600.0 gtk-x11-2.0.>=600.0 pango-1.0.>=800.0 \
		pangocairo-1.0 pangoft2-1.0 png glitz Xau Xdmcp expat \
		Xcursor Xfixes Xi Xinerama Xrandr

.include <bsd.port.mk>
