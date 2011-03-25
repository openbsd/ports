# $OpenBSD: Makefile,v 1.8 2011/03/25 08:30:56 ajacoutot Exp $

SHARED_ONLY=	Yes

COMMENT-main=	configuration backend system
COMMENT-editor=	editor for the dconf configuration storage system

GNOME_PROJECT=	dconf
GNOME_VERSION=	0.5.1

PKGNAME-main=	${DISTNAME}
PKGNAME-editor=	dconf-editor-${GNOME_VERSION}

REVISION-main=	5

SHARED_LIBS+=	dconf 0.0 # 0.0.0

CATEGORIES=	devel

HOMEPAGE=	http://live.gnome.org/dconf

MAINTAINER=	Jasper Lievisse Adriaanse <jasper@openbsd.org>, \
		Antoine Jacoutot <ajacoutot@openbsd.org>

# LGPLv2.1
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=	Yes

WANTLIB += c gio-2.0 glib-2.0 gmodule-2.0 gobject-2.0 gthread-2.0
WANTLIB += pthread

WANTLIB-editor += ${WANTLIB} ${MODGETTEXT_WANTLIB}
WANTLIB-editor += GL X11 Xau Xcomposite Xcursor Xdamage Xdmcp Xext Xfixes
WANTLIB-editor += Xi Xinerama Xrandr Xrender Xxf86vm atk-1.0 cairo drm
WANTLIB-editor += expat fontconfig freetype gdk-x11-2.0 gdk_pixbuf-2.0
WANTLIB-editor += gtk-x11-2.0 m pango-1.0 pangocairo-1.0 pangoft2-1.0
WANTLIB-editor += pixman-1 png pthread-stubs xcb xcb-render xcb-shm xml2
WANTLIB-editor += z

MULTI_PACKAGES=	-main

PSEUDO_FLAVORS=	no_editor
FLAVOR?=

MODULES=	devel/gettext \
		x11/gnome

BUILD_DEPENDS=	lang/vala

RUN_DEPENDS-main=	# empty
LIB_DEPENDS-main=	devel/glib2

RUN_DEPENDS-editor=	${MODGETTEXT_RUN_DEPENDS} \
			${BASE_PKGPATH},-main
LIB_DEPENDS-editor=	x11/gtk+2

CONFIGURE_STYLE=gnu
CONFIGURE_ENV=	CPPFLAGS="-I${LOCALBASE}/include" \
		LDFLAGS="-L${LOCALBASE}/lib"
CONFIGURE_ARGS=	--disable-gtk-doc \
		--disable-introspection

.if ${FLAVOR:L:Mno_editor}
CONFIGURE_ARGS +=	--disable-editor
.else
MULTI_PACKAGES +=	-editor
CONFIGURE_ARGS +=	--enable-editor
.endif

pre-configure:
	${SUBST_CMD} ${WRKSRC}/{bin,client,editor}/Makefile.in \
		${WRKSRC}/editor/dconf-model.{c,vala}

.include <bsd.port.mk>
