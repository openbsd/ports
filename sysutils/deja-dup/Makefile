# $OpenBSD: Makefile,v 1.27 2014/04/11 09:17:35 giovanni Exp $

SHARED_ONLY=	Yes

COMMENT=	simple encrypted backup tool for GNOME

GNOME_VERSION=	30.0
GNOME_PROJECT=	deja-dup
REVISION=	0

CATEGORIES=	sysutils x11/gnome

HOMEPAGE=	https://launchpad.net/deja-dup

MAINTAINER=	Antoine Jacoutot <ajacoutot@openbsd.org>

# GPLv3
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += atk-1.0 c cairo cairo-gobject fontconfig freetype gdk-3
WANTLIB += gdk_pixbuf-2.0 gio-2.0 girepository-1.0 glib-2.0 gmodule-2.0
WANTLIB += gobject-2.0 gtk-3 m nautilus-extension notify pango-1.0
WANTLIB += pangocairo-1.0 pangoft2-1.0 peas-1.0 pthread secret-1
WANTLIB += z

MASTER_SITES=	https://launchpad.net/deja-dup/${GNOME_VERSION:C/^([0-9]+).*/\1/}/${GNOME_VERSION}/+download/

MODULES=	devel/cmake \
		devel/dconf \
		devel/gettext \
		lang/python \
		x11/gnome

MODGNOME_TOOLS += desktop-file-utils gtk-update-icon-cache vala yelp

RUN_DEPENDS=	sysutils/duplicity

LIB_DEPENDS=	devel/libpeas \
		x11/gnome/nautilus

CONFIGURE_ARGS=	-DENABLE_UNITY:BOOL=OFF \
		-DENABLE_UNITY_CCPANEL:BOOL=OFF

# XXX does not build with new gnome-control-center
CONFIGURE_ARGS +=	-DENABLE_CCPANEL:BOOL=OFF

FAKE_FLAGS=	sysconfdir=${PREFIX}/share/examples/deja-dup

pre-configure:
	${SUBST_CMD} ${WRKSRC}/libdeja/PythonChecker.vala

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples
	mv ${PREFIX}/etc ${PREFIX}/share/examples/deja-dup

.include <bsd.port.mk>
