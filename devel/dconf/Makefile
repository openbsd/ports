# $OpenBSD: Makefile,v 1.59 2014/04/01 18:06:28 jasper Exp $

SHARED_ONLY=		Yes

COMMENT-main=		configuration backend system
COMMENT-editor=		graphical dconf(1) editor

GNOME_PROJECT=		dconf
GNOME_VERSION=		0.20.0

PKGNAME-main=		${DISTNAME}
PKGNAME-editor=		dconf-editor-${GNOME_VERSION}

REVISION-main=		0

SHARED_LIBS +=		dconf        1.0 # 1.0.0
SHARED_LIBS +=		dconf-dbus-1 1.0 # 1.0.0

CATEGORIES=		devel

MAINTAINER=		Jasper Lievisse Adriaanse <jasper@openbsd.org>, \
			Antoine Jacoutot <ajacoutot@openbsd.org>

# LGPLv2.1
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += c gio-2.0 glib-2.0 gobject-2.0 pthread

WANTLIB-main += ${WANTLIB} dbus-1

WANTLIB-editor += ${WANTLIB} ${MODGETTEXT_WANTLIB}
WANTLIB-editor += atk-1.0 cairo cairo-gobject dconf fontconfig freetype
WANTLIB-editor += gdk-3 gdk_pixbuf-2.0 gmodule-2.0 gtk-3 m pango-1.0
WANTLIB-editor += pangocairo-1.0 pangoft2-1.0 xml2 z

MULTI_PACKAGES=		-main -editor

PSEUDO_FLAVORS=		no_editor bootstrap
FLAVOR?=

MODULES=		devel/dconf \
			devel/gettext \
			x11/gnome

MODGNOME_TOOLS +=  desktop-file-utils  gtk-update-icon-cache docbook vala

RUN_DEPENDS-main=	# empty
LIB_DEPENDS-main=	devel/glib2 \
			x11/dbus

RUN_DEPENDS-editor=	${RUN_DEPENDS}
LIB_DEPENDS-editor=	${MODGETTEXT_LIB_DEPENDS} \
			${BASE_PKGPATH},-main=${GNOME_VERSION} \
			x11/gtk+3

CONFIGURE_STYLE=	gnu

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
