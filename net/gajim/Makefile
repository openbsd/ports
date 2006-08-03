# $OpenBSD: Makefile,v 1.8 2006/08/03 23:55:10 espie Exp $

SHARED_ONLY=	Yes

COMMENT=	"jabber client written in pygtk"
DISTNAME=	gajim-0.10.1
EXTRACT_SUFX=	.tar.bz2
CATEGORIES=	net x11
MASTER_SITES=	${HOMEPAGE}downloads/

HOMEPAGE=	http://www.gajim.org/

# GPL
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes

PYTHON_VER=	2.4

USE_X11=	Yes
USE_GMAKE=	Yes

MODULES=	devel/gettext

BUILD_DEPENDS=	:pkgconfig-*:devel/pkgconfig \
		::textproc/intltool \
		${RUN_DEPENDS}
LIB_DEPENDS=	gtkspell::textproc/gtkspell \
		python${PYTHON_VER}.0.0::lang/python/${PYTHON_VER}
RUN_DEPENDS=	:python-expat-${PYTHON_VER}*:lang/python/${PYTHON_VER},-expat \
		::net/py-dns \
		::databases/py-sqlite2 \
		::x11/py-gtk2
WANTLIB=	X11 Xext Xss fontconfig freetype m \
		aspell atk-1.0.>=1011.0 cairo gdk-x11-2.0.>=600.0 \
		gdk_pixbuf-2.0.>=600.0 glib-2.0.>=600.0 gmodule-2.0.>=600.0 \
		gobject-2.0.>=600.0 gtk-x11-2.0.>=600.0 pango-1.0.>=800.0 \
		pangocairo-1.0.0.0 pangoft2-1.0.0.0

MAKE_ENV+=	PY_CFLAGS="-I${LOCALBASE}/include -I${LOCALBASE}/include/python${PYTHON_VER}" \
		PY_PREFIX=${LOCALBASE} \
		CC=${CC} LDFLAGS=-L${LOCALBASE}/lib
MAKE_FLAGS=	PYTHONVER=${PYTHON_VER}
FAKE_FLAGS=	DESTDIR=${DESTDIR} PYTHON=${LOCALBASE}/bin/python${PYTHON_VER}

.include <bsd.port.mk>
