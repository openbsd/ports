# $OpenBSD: Makefile,v 1.44 2013/01/16 14:28:35 ajacoutot Exp $

COMMENT=		vector graphics library

DISTNAME=		cairo-1.12.8
SHARED_LIBS+=		cairo 12.1
SHARED_LIBS+=		cairo-gobject 1.0
SHARED_LIBS+=		cairo-script-interpreter 1.0
CATEGORIES=		graphics
DPB_PROPERTIES=		parallel
EXTRACT_SUFX=		.tar.xz
REVISION=		0

HOMEPAGE=		http://cairographics.org/

MAINTAINER=		Eric Faurot <eric@openbsd.org>

WANTLIB += X11 Xau Xdmcp Xext Xrender expat ffi fontconfig freetype
WANTLIB += glib-2.0 gobject-2.0 gthread-2.0 m pcre pixman-1 png
WANTLIB += pthread pthread-stubs xcb xcb-render xcb-shm z

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
			--disable-gtk-doc

# needed for firefox
CONFIGURE_ARGS +=	--enable-tee

# If one of these tools is found at configure stage, it might be used,
# no matter whether we use --disable-gtk-doc or not.
CONFIGURE_ENV +=ac_cv_path_GTKDOC_CHECK="" \
		ac_cv_path_GTKDOC_REBASE="" \
		ac_cv_path_GTKDOC_MKPDF=""

post-install:
	rm ${PREFIX}/lib/cairo/*.{a,la}

.include <bsd.port.mk>
