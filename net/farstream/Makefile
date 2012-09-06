# $OpenBSD: Makefile,v 1.5 2012/09/06 12:38:35 ajacoutot Exp $

COMMENT=		audio/video communications framework

DISTNAME=		farstream-0.1.2
CATEGORIES=		net devel
REVISION=		3

SHARED_LIBS +=  farstream-0.1        0.0      # 0.1

HOMEPAGE=		http://www.freedesktop.org/wiki/Software/Farstream

# LGPLv2.1
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=		http://www.freedesktop.org/software/farstream/releases/farstream/

MODULES=		devel/gettext \
			lang/python

MODPY_ADJ_FILES=	configure

WANTLIB += e2fs-uuid ffi gio-2.0 glib-2.0 gmodule-2.0 gobject-2.0
WANTLIB += gssdp-1.0 gstbase-0.10 gstnetbuffer-0.10 gstreamer-0.10
WANTLIB += gstrtp-0.10 gthread-2.0 gupnp-1.0 gupnp-igd-1.0 m nice
WANTLIB += pcre soup-2.4 xml2 z

BUILD_DEPENDS=		devel/gobject-introspection \
			multimedia/gstreamer-0.10/py-gstreamer
LIB_DEPENDS=		multimedia/gstreamer-0.10/plugins-base \
			net/libnice>=0.1.2
RUN_DEPENDS=		multimedia/gstreamer-0.10/py-gstreamer

USE_GMAKE=		Yes
USE_LIBTOOL=		Yes

AUTOCONF_VERSION=	2.68

# regen configure so it will detect the right python version
CONFIGURE_STYLE=	autoconf
CONFIGURE_ARGS+=	${CONFIGURE_SHARED} \
			--enable-gupnp \
			--enable-python \
			--enable-introspection

.include <bsd.port.mk>
