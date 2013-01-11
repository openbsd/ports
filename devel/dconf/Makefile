# $OpenBSD: Makefile,v 1.47 2013/01/11 10:09:20 ajacoutot Exp $

SHARED_ONLY=	Yes

COMMENT-main=	configuration backend system
COMMENT-editor=	editor for the dconf configuration storage system

GNOME_PROJECT=	dconf
GNOME_VERSION=	0.14.1

PKGNAME-main=	${DISTNAME}
PKGNAME-editor=	dconf-editor-${GNOME_VERSION}

REVISION-editor= 1

SHARED_LIBS+=	dconf        1.0 # 1.0.0
SHARED_LIBS+=	dconf-dbus-1 1.0 # 1.0.0

CATEGORIES=	devel

HOMEPAGE=	http://live.gnome.org/dconf

MAINTAINER=	Jasper Lievisse Adriaanse <jasper@openbsd.org>, \
		Antoine Jacoutot <ajacoutot@openbsd.org>

# LGPLv2.1
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=	Yes

WANTLIB += c gio-2.0 glib-2.0 gobject-2.0 pthread

WANTLIB-main += ${WANTLIB} dbus-1

WANTLIB-editor += ${WANTLIB} ${MODGETTEXT_WANTLIB}
WANTLIB-editor += GL X11 Xrender atk-1.0 cairo cairo-gobject dconf expat
WANTLIB-editor += fontconfig freetype gdk-3 gdk_pixbuf-2.0 gmodule-2.0
WANTLIB-editor += gtk-3 m pango-1.0 pangocairo-1.0 pangoft2-1.0 pixman-1
WANTLIB-editor += png pthread-stubs xcb xcb-render xcb-shm xml2 z Xext

MULTI_PACKAGES=	-main -editor

PSEUDO_FLAVORS=	no_editor bootstrap
FLAVOR?=

MODULES=	devel/gettext \
		x11/gnome \
		devel/dconf

MODGNOME_DESKTOP_FILE= Yes

BUILD_DEPENDS=	lang/vala

# man pages
BUILD_DEPENDS += textproc/docbook-xsl # adds textproc/libxslt

RUN_DEPENDS-main=	# empty
LIB_DEPENDS-main=	devel/glib2 \
			x11/dbus

RUN_DEPENDS-editor=	${RUN_DEPENDS} \
			devel/desktop-file-utils
LIB_DEPENDS-editor=	${MODGETTEXT_LIB_DEPENDS} \
			${BASE_PKGPATH},-main=${GNOME_VERSION} \
			x11/gtk+3

CONFIGURE_STYLE=gnu
MODGNOME_LDFLAGS=	-pthread

.include <bsd.port.arch.mk>

.if ${BUILD_PACKAGES:M-editor}
CONFIGURE_ARGS +=	--enable-editor
.else
CONFIGURE_ARGS +=	--disable-editor
.endif

pre-configure:
	${SUBST_CMD} ${WRKSRC}/{bin,client,editor}/Makefile.in \
		${WRKSRC}/dbus-1/Makefile.in
	perl -pi -e 's,/etc/dconf,${SYSCONFDIR}/dconf,g' \
		${WRKSRC}/{engine/dconf-engine,bin/dconf-update}.c

.include <bsd.port.mk>
