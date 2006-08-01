# $OpenBSD: Makefile,v 1.38 2006/08/01 11:17:56 espie Exp $

COMMENT=		"front-end to various audio players"

DISTNAME=		gqmpeg-0.20.0		
CATEGORIES=		audio

HOMEPAGE=		http://gqmpeg.sourceforge.net/

# GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
WANTLIB=		X11 Xext Xi c gdk glib gmodule gtk jpeg m png tiff z

MASTER_SITES=		${MASTER_SITE_SOURCEFORGE:=gqmpeg/}

MODULES=		devel/gettext

RUN_DEPENDS+=		:mpg321-*:audio/mpg321

LIB_DEPENDS=		gdk_pixbuf.>=2::graphics/gdk-pixbuf

CONFIGURE_STYLE=	gnu
AUTOCONF_VERSION=	2.52
CONFIGURE_ENV=		CPPFLAGS="-I${LOCALBASE}/include/libpng \
			-I${LOCALBASE}/include" \
			LDFLAGS="-L${LOCALBASE}/lib" \
			ac_cv_path_GNOME_CONFIG=no

DOCS=			FAQ README SKIN-SPECS-V1 \
			plugin/README.plugin

post-install:
	cd ${WRKSRC} && \
	    ${INSTALL_DATA_DIR} ${PREFIX}/share/doc/gqmpeg && \
	    ${INSTALL_DATA} ${DOCS} ${PREFIX}/share/doc/gqmpeg

.include <bsd.port.mk>
