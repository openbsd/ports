# $OpenBSD: Makefile,v 1.11 2020/06/12 14:19:11 sthen Exp $

COMMENT-main =		distributed builds for C, C++ and Objective C
COMMENT-gtk =		GTK+ monitor for distcc
COMMENT-server =	distcc server

GH_PROJECT =		distcc
GH_ACCOUNT =		distcc
VERSION =		3.3.3
DISTNAME =		distcc-${VERSION}
PKGNAME-main =		${DISTNAME}
PKGNAME-gtk =		distcc-gtk-${VERSION}
PKGNAME-server =	distcc-server-${VERSION}
EPOCH =			0
CATEGORIES =		devel net

HOMEPAGE =		https://distcc.github.io/

# GPLv2
PERMIT_PACKAGE =	Yes

MASTER_SITES =		https://github.com/distcc/distcc/releases/download/v${VERSION}/

MULTI_PACKAGES =	-main -gtk -server

MODULES =		lang/python
MODPY_VERSION =		${MODPY_DEFAULT_VERSION_3}
MODPY_EGG_VERSION =	${VERSION}

# Only -main needs an RDEP
MODPY_RUNDEP =		No

WANTLIB +=		c popt pthread
LIB_DEPENDS =		devel/popt

LIB_DEPENDS-main =	${LIB_DEPENDS}
RUN_DEPENDS-main +=	${MODPY_RUN_DEPENDS}
WANTLIB-main =		${WANTLIB} ${MODPY_WANTLIB}

WANTLIB-server =	${WANTLIB}
LIB_DEPENDS-server =	${LIB_DEPENDS}

LIB_DEPENDS-gtk =	${LIB_DEPENDS} \
			x11/gtk+2
RUN_DEPENDS-gtk =	devel/desktop-file-utils
WANTLIB-gtk +=		${WANTLIB} X11 Xcomposite Xcursor Xdamage Xext Xfixes Xi
WANTLIB-gtk +=		Xinerama Xrandr Xrender atk-1.0 cairo fontconfig freetype
WANTLIB-gtk +=		gdk-x11-2.0 gdk_pixbuf-2.0 gio-2.0 glib-2.0 gobject-2.0
WANTLIB-gtk +=		gtk-x11-2.0 harfbuzz intl pango-1.0 pangocairo-1.0
WANTLIB-gtk +=		pangoft2-1.0 z

USE_GMAKE =		Yes

CONFIGURE_STYLE =	gnu
CONFIGURE_ENV =		CPPFLAGS="-I${LOCALBASE}/include" \
			LDFLAGS="-L${LOCALBASE}/lib"
CONFIGURE_ARGS +=	--without-libiberty \
			--without-avahi \
			--with-gtk

FAKE_FLAGS =		sysconfdir="${PREFIX}/share/examples/"

pre-configure:
	cd ${WRKSRC} && sed -i -E \
	    -e 's,/usr/(bin|lib)/distcc,${PREFIX}/\1/distcc,g' \
	    man/distcc.1 man/distccd.1 update-distcc-symlinks.py \
	    src/daemon.c src/serve.c

post-install:
	rm -r ${PREFIX}/share/examples/default

.include <bsd.port.mk>
