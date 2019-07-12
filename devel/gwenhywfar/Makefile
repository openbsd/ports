# $OpenBSD: Makefile,v 1.24 2019/07/12 20:44:11 sthen Exp $

COMMENT=	helper library for networking and security applications

# update the "release=XX" in DISTFILES, not just DISTNAME
DISTNAME=	gwenhywfar-4.13.1
DISTFILES=	${DISTNAME}${EXTRACT_SUFX}{download.php?package=01\&release=78\&file=01}
REVISION=	10

SHARED_LIBS +=	gwenhywfar           1.3      # 73.1
SHARED_LIBS +=	gwengui-gtk2         0.0      # unknown
SHARED_LIBS +=	gwengui-qt4          0.0      # unknown
SHARED_LIBS +=	gwengui-cpp          0.0      # unknown

CATEGORIES=	devel

HOMEPAGE=	http://www2.aquamaniac.de/sites/download/packages.php?package=01&showall=1

# LGPLv2.1 with OpenSSL exemption
PERMIT_PACKAGE=	Yes

WANTLIB += ${COMPILER_LIBCXX} ICE QtGui SM X11 Xcomposite Xcursor
WANTLIB += Xdamage Xext Xfixes Xi Xinerama Xrandr Xrender atk-1.0
WANTLIB += c cairo crypto expat ffi fontconfig freetype gcrypt
WANTLIB += gdk-x11-2.0 gdk_pixbuf-2.0 gio-2.0 glib-2.0 gmodule-2.0
WANTLIB += gmp gnutls gobject-2.0 gpg-error graphite2 gthread-2.0
WANTLIB += gtk-x11-2.0 harfbuzz hogweed iconv idn2 intl m nettle p11-kit
WANTLIB += pango-1.0 pangocairo-1.0 pangoft2-1.0 pcre pixman-1
WANTLIB += png ssl tasn1 unistring xcb xcb-render
WANTLIB += xcb-shm z fribidi

MASTER_SITES=	http://www.aquamaniac.de/sites/download/

COMPILER =		base-clang ports-gcc base-gcc

MODULES=		x11/qt4
BUILD_DEPENDS=		devel/gettext,-tools
LIB_DEPENDS=		graphics/png \
			security/libgcrypt \
			security/gnutls \
			x11/gtk+2

USE_GMAKE=		Yes
CONFIGURE_STYLE=	gnu
CONFIGURE_ARGS+=	--with-guis="gtk2 qt4" \
			--with-qt4-includes=${MODQT4_INCDIR} \
			qt4_libs="-L${MODQT4_LIBDIR} -Wl,-rpath-link,${X11BASE}/lib -lQtGui -lQtCore"
LIBTOOL_FLAGS=		--tag=disable-static
CONFIGURE_ENV=		LDFLAGS="-L${LOCALBASE}/lib"

pre-configure:
	${SUBST_CMD} ${WRKSRC}/gwenhywfar-config.cmake.in \
	             ${WRKSRC}/gui/qt4/gwengui-qt4-config.cmake.in

.include <bsd.port.mk>
