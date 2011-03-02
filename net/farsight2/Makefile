# $OpenBSD: Makefile,v 1.9 2011/03/02 07:32:58 jasper Exp $

COMMENT=		audio/video communications framework

DISTNAME=		farsight2-0.0.25
SHARED_LIBS +=  gstfarsight-0.10        2.1
CATEGORIES=		net multimedia

HOMEPAGE=		http://farsight.freedesktop.org/

# LGPLv2.1
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=		${HOMEPAGE}/releases/farsight2/

WANTLIB += ffi glib-2.0 gmodule-2.0 gobject-2.0 gstbase-0.10 gstnetbuffer-0.10
WANTLIB += gstreamer-0.10 gstrtp-0.10 gthread-2.0 m pcre xml2
WANTLIB += z nice util
WANTLIB += ${MODPY_WANTLIB}

BUILD_DEPENDS=		${RUN_DEPENDS}
LIB_DEPENDS=		net/libnice>=0.1.0 \
			${MODPY_LIB_DEPENDS}
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
			--disable-static \
			--disable-silent-rules

pre-configure:
	@ln -s ${LOCALBASE}/bin/python${MODPY_VERSION}-config \
		${WRKDIR}/bin/python-config

.include <bsd.port.mk>
