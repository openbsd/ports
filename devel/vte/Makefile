# $OpenBSD: Makefile,v 1.90 2011/09/23 09:00:28 ajacoutot Exp $

# Don't pull in x11/py-gtk2 on these archs; build fails with binutils 2.15
NOT_FOR_ARCHS-python=	mips64 mips64el

COMMENT-main=		terminal emulation library
COMMENT-python= 	python bindings for vte
COMMENT-pty-helper=	setuid helper for opening ptys

GNOME_PROJECT=		vte
GNOME_VERSION=		0.28.2

PKGNAME-main=	vte3-${GNOME_VERSION}

FULLPKGNAME-python= 	py-${DISTNAME}
FULLPKGNAME-pty-helper=	vte-ptyhelper-${GNOME_VERSION}

# python is only available with the gtk2 FLAVOR so we need to append
# ",gtk2" to the FULLPKGPATH
FULLPKGPATH-python=	devel/vte,-python,gtk2
FULLPKGPATH-pty-helper=	devel/vte,-pty-helper

REVISION-main =		2
REVISION-python = 	2
REVISION-pty-helper=	1

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

WANTLIB += GL X11 Xau Xcomposite Xcursor Xdamage Xdmcp Xext Xfixes
WANTLIB += Xi Xinerama Xrandr Xrender Xxf86vm atk-1.0 cairo
WANTLIB += drm expat ffi fontconfig freetype gdk_pixbuf-2.0 gio-2.0
WANTLIB += glib-2.0 gmodule-2.0 gobject-2.0 gthread-2.0 m
WANTLIB += ncurses pango-1.0 pangocairo-1.0 pangoft2-1.0 pcre
WANTLIB += pixman-1 png pthread-stubs xcb xcb-render xcb-shm z

WANTLIB-main=		${WANTLIB}

WANTLIB-pty-helper=	util c
LIB_DEPENDS-pty-helper=	# empty

WANTLIB-python= 	${WANTLIB} gdk-x11-2.0 gtk-x11-2.0 vte>=14
LIB_DEPENDS-python=	${LIB_DEPENDS-main} \
			devel/vte,gtk2
RUN_DEPENDS-python=	${MODPY_RUN_DEPENDS} \
			x11/py-gtk2

FLAVORS= 	gtk2
FLAVOR?=

.if ${FLAVOR:L:Mgtk2}
MULTI_PACKAGES+=	-python
FULLPKGNAME-main=	vte-${GNOME_VERSION}
FULLPKGPATH-main=	devel/vte,-main,gtk2
RUN_DEPENDS-main+=	${BASE_PKGPATH},-pty-helper
LIB_DEPENDS-main+=	${LIB_DEPENDS} \
			x11/gtk+2
WANTLIB-main+=		c pthread gdk-x11-2.0 gtk-x11-2.0
CONFIGURE_ARGS+=	--with-gtk=2.0
SHARED_LIBS+=	vte	14.1    # 2609.0

. if ! ${MACHINE_ARCH:Mmips64*}
BUILD_DEPENDS+=		x11/py-gtk2
CONFIGURE_ARGS+=	--enable-python
. endif

.else
RUN_DEPENDS-main+=	${BASE_PKGPATH},-pty-helper
LIB_DEPENDS-main+=	${LIB_DEPENDS} \
			x11/gtk+3
WANTLIB +=		c kvm pthread
WANTLIB-main+=		cairo-gobject gdk-3 gtk-3
CONFIGURE_ARGS+=	--with-gtk=3.0
SHARED_LIBS +=  vte2_90                   0.0 # 2809.2
.endif

MODGNOME_TOOLS= 	goi

CONFIGURE_STYLE=	gnu
CONFIGURE_ARGS+=	--disable-Bsymbolic
CONFIGURE_ENV=		CPPFLAGS="-I${LOCALBASE}/include" \
			LDFLAGS="-L${LOCALBASE}/lib"

.include <bsd.port.mk>
