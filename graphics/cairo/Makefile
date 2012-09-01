# $OpenBSD: Makefile,v 1.41 2012/09/01 14:36:57 ajacoutot Exp $

COMMENT=		vector graphics library

DISTNAME=		cairo-1.12.2
SHARED_LIBS+=		cairo 12.0
SHARED_LIBS+=		cairo-gobject 1.0
SHARED_LIBS+=		cairo-script-interpreter 1.0
CATEGORIES=		graphics
EXTRACT_SUFX=		.tar.xz
REVISION=		2

HOMEPAGE=		http://cairographics.org/

MAINTAINER=		Eric Faurot <eric@openbsd.org>

WANTLIB=		GL X11 Xau Xdamage Xdmcp Xext Xfixes Xrender \
			Xxf86vm c drm expat ffi fontconfig freetype \
			glib-2.0 gobject-2.0 gthread-2.0 m pcre pixman-1 \
			png pthread-stubs pthread stdc++ xcb xcb-render \
			xcb-shm z

# LGPLv2.1 / MPL 1.1
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=		http://cairographics.org/releases/

MODULES=		devel/gettext

USE_LIBTOOL=		Yes
USE_GMAKE=		Yes

LIB_DEPENDS=		graphics/png \
			devel/glib2

CONFIGURE_STYLE=	gnu
CONFIGURE_ARGS=		${CONFIGURE_SHARED} \
			--enable-gl \
			--enable-tee \
			--enable-xml

.include <bsd.port.mk>
