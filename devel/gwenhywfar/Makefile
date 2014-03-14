# $OpenBSD: Makefile,v 1.3 2014/03/14 16:13:43 nigel Exp $

SHARED_ONLY=	Yes

COMMENT=	helper library for networking and security applications

# update the "release=XX" in DISTFILES, not just DISTNAME
DISTNAME=	gwenhywfar-4.10.0beta
DISTFILES=	${DISTNAME}${EXTRACT_SUFX}{download.php?package=01\&release=73\&file=01}
REVISION =	0

SHARED_LIBS +=	gwenhywfar           1.0      # 70.0
SHARED_LIBS +=	gwengui-gtk2         0.0      # unknown
SHARED_LIBS +=	gwengui-qt4          0.0      # 0.0
SHARED_LIBS +=	gwengui-cpp          0.0      # unknown

CATEGORIES=	devel

HOMEPAGE=	http://www2.aquamaniac.de/sites/download/packages.php?package=01&showall=1

# LGPLv2.1 with OpenSSL exemption
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += X11 Xcomposite Xcursor Xdamage Xext Xfixes Xi Xinerama
WANTLIB += Xrandr Xrender atk-1.0 c cairo crypto expat ffi fontconfig
WANTLIB += freetype gcrypt gdk-x11-2.0 gdk_pixbuf-2.0 gio-2.0
WANTLIB += glib-2.0 gmodule-2.0 gmp gnutls gobject-2.0 gpg-error
WANTLIB += graphite2 gthread-2.0 gtk-x11-2.0 harfbuzz hogweed
WANTLIB += m nettle p11-kit pango-1.0 pangocairo-1.0 pangoft2-1.0
WANTLIB += pcre pixman-1 png pthread pthread-stubs ssl stdc++
WANTLIB += tasn1 xcb xcb-render xcb-shm z
WANTLIB += ICE lib/qt4/QtGui SM gmp

MASTER_SITES=	http://www.aquamaniac.de/sites/download/

MODULES=		devel/gettext x11/qt4
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

.include <bsd.port.mk>
