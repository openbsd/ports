# $OpenBSD: Makefile,v 1.1.1.1 2005/10/20 04:20:27 jolan Exp $
SHARED_ONLY=	Yes

COMMENT=	"jabber client written in pygtk"
DISTNAME=	gajim-0.8.2
EXTRACT_SUFX=	.tar.bz2
CATEGORIES=	net x11
MASTER_SITES=	${HOMEPAGE}downloads/

HOMEPAGE=	http://www.gajim.org/

# GPL
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes

PYTHON_VER=	2.3

USE_GMAKE=	Yes

MODULES=	devel/gettext

BUILD_DEPENDS=	:pkgconfig-*:devel/pkgconfig \
		${RUN_DEPENDS}
LIB_DEPENDS=	python2.3.0.0::lang/python/${PYTHON_VER} \
		gtkspell.0::textproc/gtkspell
RUN_DEPENDS=	:python-${PYTHON_VER}*:lang/python/${PYTHON_VER} \
		:python-expat-${PYTHON_VER}*:lang/python/${PYTHON_VER},-expat \
		::net/py-dns \
		::x11/py-gtk2
WANTLIB=	X11 Xext Xft Xrender Xss fontconfig freetype m \
		aspell atk-1.0.1011.0 gdk-x11-2.0.600.0 gdk_pixbuf-2.0.600.0 \
		glib-2.0.600.0 gmodule-2.0.600.0 gobject-2.0.600.0 \
		gtk-x11-2.0.600.0 pango-1.0.800.0 pangox-1.0.800.0 \
		pangoxft-1.0.800.0

MAKE_ENV+=	PY_CFLAGS="-I${LOCALBASE}/include -I${LOCALBASE}/include/python${PYTHON_VER}" \
		PY_PREFIX=${LOCALBASE} \
		CC=${CC} LDFLAGS=-L${LOCALBASE}/lib

.include <bsd.port.mk>
