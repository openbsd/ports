# $OpenBSD: Makefile,v 1.108 2013/09/28 08:50:43 ajacoutot Exp $

# Don't pull in x11/py-gtk2 on these archs; build fails with binutils 2.15
NOT_FOR_ARCHS-python=	mips64 mips64el

COMMENT-main=		terminal emulation library
COMMENT-python= 	python bindings for vte

GNOME_PROJECT=		vte
GNOME_VERSION=		0.28.2

SHARED_LIBS+=	vte	14.1    # 2609.0

FULLPKGNAME-main=	vte-${GNOME_VERSION}
FULLPKGNAME-python= 	py-${DISTNAME}

REVISION-main =		11
REVISION-python = 	8

CATEGORIES=		devel

MAINTAINER=		Jasper Lievisse Adriaanse <jasper@openbsd.org>, \
			Antoine Jacoutot <ajacoutot@openbsd.org>

# LGPLv2
PERMIT_PACKAGE_CDROM=	Yes

MODULES=		devel/gettext \
			lang/python \
			x11/gnome

WANTLIB += GL X11 Xau Xcomposite Xcursor Xdamage Xdmcp Xext Xfixes
WANTLIB += Xi Xinerama Xrandr Xrender Xxf86vm atk-1.0 cairo drm
WANTLIB += expat ffi fontconfig freetype gdk_pixbuf-2.0 gio-2.0
WANTLIB += glib-2.0 gmodule-2.0 gobject-2.0 gthread-2.0 m ncurses
WANTLIB += pango-1.0 pangocairo-1.0 pangoft2-1.0 pcre pixman-1
WANTLIB += png pthread-stubs stdc++ xcb xcb-render xcb-shm z pthread
WANTLIB += harfbuzz gdk-x11-2.0 gtk-x11-2.0

MODPY_RUNDEP=		No
MULTI_PACKAGES= 	-main -python

WANTLIB-python= 	${WANTLIB} vte
LIB_DEPENDS-python=	${LIB_DEPENDS-main} \
			${BASE_PKGPATH}
RUN_DEPENDS-python=	${MODPY_RUN_DEPENDS} \
			x11/py-gtk2

LIB_DEPENDS-main+=	${LIB_DEPENDS} \
			x11/gtk+2
WANTLIB-main=		${WANTLIB} c

. if ! ${MACHINE_ARCH:Mmips64*}
BUILD_DEPENDS+=		x11/py-gtk2
CONFIGURE_ARGS+=	--enable-python

post-install:
	rm ${PREFIX}/lib/python${MODPY_VERSION}/site-packages/gtk-2.0/*.{a,la}
. endif

MODGNOME_TOOLS= 	gi

CONFIGURE_STYLE=	gnu
CONFIGURE_ARGS+=	--disable-gnome-pty-helper \
			--with-gtk=2.0 \
			--program-suffix=2

# error: -Bsymbolic requested but not supported by ld
CONFIGURE_ARGS +=	--disable-Bsymbolic

.include <bsd.port.mk>
