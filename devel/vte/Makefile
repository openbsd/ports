# $OpenBSD: Makefile,v 1.97 2012/02/24 17:43:11 nigel Exp $

# Don't pull in x11/py-gtk2 on these archs; build fails with binutils 2.15
NOT_FOR_ARCHS-python=	mips64 mips64el

COMMENT-main=		terminal emulation library
COMMENT-python= 	python bindings for vte

GNOME_PROJECT=		vte
GNOME_VERSION=		0.28.2

SHARED_LIBS+=	vte	14.1    # 2609.0

FULLPKGNAME-main=	vte-${GNOME_VERSION}
FULLPKGNAME-python= 	py-${DISTNAME}

REVISION-main =		6
REVISION-python = 	4

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

WANTLIB += GL X11 Xau Xcomposite Xcursor Xdamage Xdmcp Xext Xfixes
WANTLIB += Xi Xinerama Xrandr Xrender Xxf86vm atk-1.0 cairo drm
WANTLIB += expat ffi fontconfig freetype gdk_pixbuf-2.0 gio-2.0
WANTLIB += glib-2.0 gmodule-2.0 gobject-2.0 gthread-2.0 m ncurses
WANTLIB += pango-1.0 pangocairo-1.0 pangoft2-1.0 pcre pixman-1
WANTLIB += png pthread-stubs stdc++ util xcb xcb-render xcb-shm z


MODPY_RUNDEP=		No
MULTI_PACKAGES= 	-main -python

WANTLIB-python= 	${WANTLIB} gdk-x11-2.0 gtk-x11-2.0 vte>=14
LIB_DEPENDS-python=	${LIB_DEPENDS-main} \
			${BASE_PKGPATH}
RUN_DEPENDS-python=	${MODPY_RUN_DEPENDS} \
			x11/py-gtk2

WANTLIB-main=		${WANTLIB} util
LIB_DEPENDS-main+=	${LIB_DEPENDS} \
			x11/gtk+2
WANTLIB-main+=		c pthread gdk-x11-2.0 gtk-x11-2.0

. if ! ${MACHINE_ARCH:Mmips64*}
BUILD_DEPENDS+=		x11/py-gtk2
CONFIGURE_ARGS+=	--enable-python
. endif

MODGNOME_TOOLS= 	goi

AUTOCONF_VERSION=	2.68
AUTOMAKE_VERSION=	1.11

CONFIGURE_STYLE=	autoconf
CONFIGURE_ARGS+=	--disable-Bsymbolic \
			--disable-gnome-pty-helper \
			--enable-bsd-pty \
			--with-gtk=2.0 \
			--program-suffix=2

.include <bsd.port.mk>
