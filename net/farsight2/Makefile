# $OpenBSD: Makefile,v 1.14 2012/02/24 09:35:43 ajacoutot Exp $

COMMENT=		audio/video communications framework

DISTNAME=		farsight2-0.0.30
SHARED_LIBS +=  gstfarsight-0.10     3.0      # 9.1
CATEGORIES=		net multimedia
REVISION=		0

HOMEPAGE=		http://farsight.freedesktop.org/

# LGPLv2.1
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=	Yes

WANTLIB += ffi glib-2.0 gmodule-2.0 gobject-2.0 gstbase-0.10 gstnetbuffer-0.10
WANTLIB += gstreamer-0.10 gstrtp-0.10 gthread-2.0 m nice pcre
WANTLIB += xml2 z

MASTER_SITES=		${HOMEPAGE}/releases/farsight2/

BUILD_DEPENDS=		${RUN_DEPENDS}
LIB_DEPENDS=		net/libnice>=0.1.0
RUN_DEPENDS=		multimedia/gstreamer-0.10/plugins-farsight>=0.12.11p0 \
			multimedia/gstreamer-0.10/py-gstreamer

MODULES=		devel/gettext \
			lang/python

USE_GMAKE=		Yes
USE_LIBTOOL=		Yes
LIBTOOL_FLAGS+= 	--tag=disable-static
CONFIGURE_STYLE=	gnu
CONFIGURE_ARGS+=	${CONFIGURE_SHARED} \
			--disable-gtk-doc \
			--disable-gupnp \
			--disable-static

pre-configure:
	@ln -s ${LOCALBASE}/bin/python${MODPY_VERSION}-config \
		${WRKDIR}/bin/python-config

.include <bsd.port.mk>
