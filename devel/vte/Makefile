# $OpenBSD: Makefile,v 1.85 2011/09/12 12:07:25 jasper Exp $

COMMENT-main=		terminal emulation library
COMMENT-python= 	python bindings for vte
COMMENT-pty-helper=	setuid helper for opening ptys

GNOME_PROJECT=		vte
GNOME_VERSION=		0.28.2

PKGNAME-main=		${DISTNAME}
PKGNAME-python= 	py-${DISTNAME}
PKGNAME-pty-helper=	vte-ptyhelper-${GNOME_VERSION}

CATEGORIES=		devel

HOMEPAGE=		http://www.gnome.org/

MAINTAINER=		Jasper Lievisse Adriaanse <jasper@openbsd.org>, \
			Antoine Jacoutot <ajacoutot@openbsd.org>

# LGPLv2
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MODULES=		devel/gettext \
			lang/python \
			x11/gnome

MODPY_RUNDEP=		No
MULTI_PACKAGES= 	-main -pty-helper
# Don't pull in x11/py-gtk2 on these archs; build fails with binutils 2.15
NOT_FOR_ARCHS-python=	mips64 mips64el

WANTLIB += X11 Xau Xcomposite Xcursor Xdamage Xdmcp Xext Xfixes
WANTLIB += Xi Xinerama Xrandr Xrender atk-1.0 cairo expat fontconfig
WANTLIB += freetype gio-2.0 glib-2.0 gmodule-2.0 gobject-2.0
WANTLIB += m ncurses pango-1.0 pangocairo-1.0 pangoft2-1.0 pcre
WANTLIB += pixman-1 png pthread-stubs xcb xcb-render drm xcb-shm
WANTLIB += z gthread-2.0 gdk_pixbuf-2.0 GL Xxf86vm

WANTLIB-main=		${WANTLIB} c pthread

WANTLIB-pty-helper=	util c

WANTLIB-python= 	${WANTLIB} vte>=14

BUILD_DEPENDS=		devel/gobject-introspection

LIB_DEPENDS-python=	${LIB_DEPENDS-main} \
			${BASE_PKGPATH}
RUN_DEPENDS-python=	${MODPY_RUN_DEPENDS}

LIB_DEPENDS-pty-helper=	# empty

PSEUDO_FLAVORS= 	gtk3
FLAVOR?=

.if ${FLAVOR:L:Mgtk3}
RUN_DEPENDS-main+=	${BASE_PKGPATH},gtk3,-pty-helper
LIB_DEPENDS-main+=	${LIB_DEPENDS} \
			x11/gtk+3
WANTLIB-main+=		cairo-gobject gdk-3 gtk-3
CONFIGURE_ARGS+=	--with-gtk=3.0
PKGNAME-main=		vte3-${GNOME_VERSION}
SHARED_LIBS +=  vte2_90                   0.0 # 2809.0
.else
RUN_DEPENDS-main+=	${BASE_PKGPATH},-pty-helper
LIB_DEPENDS-main=	${LIB_DEPENDS} \
			x11/gtk+2
WANTLIB-main+=		gdk-x11-2.0 gtk-x11-2.0
RUN_DEPENDS-python+=	x11/py-gtk2
WANTLIB-python+=	gdk-x11-2.0 gtk-x11-2.0
CONFIGURE_ARGS+=	--with-gtk=2.0
MULTI_PACKAGES+=	-python
PKGNAME-main=		vte-${GNOME_VERSION}
SHARED_LIBS+=	vte	14.1    # 2609.0

.if ! ${MACHINE_ARCH:Mmips64*}
BUILD_DEPENDS+=		x11/py-gtk2
CONFIGURE_ARGS+=	--enable-python
.endif

.endif

CONFIGURE_STYLE=	gnu
CONFIGURE_ARGS+=	${CONFIGURE_SHARED} \
			--enable-introspection \
			--disable-Bsymbolic
CONFIGURE_ENV=		CPPFLAGS="-I${LOCALBASE}/include" \
			LDFLAGS="-L${LOCALBASE}/lib"

.include <bsd.port.mk>
