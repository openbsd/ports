# $OpenBSD: Makefile,v 1.10 2019/07/12 20:44:08 sthen Exp $

COMMENT-main =		distributed builds for C, C++ and Objective C
COMMENT-gtk =		GTK+ monitor for distcc
COMMENT-server =	distcc server

GH_PROJECT =		distcc
GH_ACCOUNT =		distcc
VERSION =		3.3
DISTNAME =		distcc-${VERSION}
PKGNAME-main =		${DISTNAME}
PKGNAME-gtk =		distcc-gtk-${VERSION}
PKGNAME-server =	distcc-server-${VERSION}
EPOCH =			0
CATEGORIES =		devel net
REVISION-gtk =		2
REVISION-main =		1
REVISION-server =	1

HOMEPAGE =		https://github.com/distcc/distcc

# GPLv2
PERMIT_PACKAGE =	Yes

MASTER_SITES =		https://github.com/distcc/distcc/releases/download/v${VERSION}/

MULTI_PACKAGES =	-main -gtk -server

MODULES =		lang/python
MODPY_VERSION =		${MODPY_DEFAULT_VERSION_3}

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
WANTLIB-gtk +=		gtk-x11-2.0 intl pango-1.0 pangocairo-1.0 pangoft2-1.0 z

USE_GMAKE =		Yes

CONFIGURE_STYLE =	gnu
CONFIGURE_ENV =		CPPFLAGS="-I${LOCALBASE}/include" \
			LDFLAGS="-L${LOCALBASE}/lib"
CONFIGURE_ARGS +=	--without-libiberty \
			--without-avahi \
			--with-gtk

FAKE_FLAGS =		sysconfdir="${PREFIX}/share/examples/"

# Fix-up path
pre-configure:
	sed -i 's,/usr/lib/distcc,${PREFIX}/lib/distcc,g' \
		${WRKSRC}/man/distcc.1 \
		${WRKSRC}/man/distccd.1 \
		${WRKSRC}/src/daemon.c \
		${WRKSRC}/src/serve.c

post-install:
	rm -r ${PREFIX}/share/examples/default
	rm ${PREFIX}/sbin/update-distcc-symlinks

.include <bsd.port.mk>
