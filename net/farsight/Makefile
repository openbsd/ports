# $OpenBSD: Makefile,v 1.1.1.1 2007/10/27 23:11:50 jasper Exp $

COMMENT=		audio/video communications framework

DISTNAME=		farsight-0.1.25
SHARED_LIBS +=	farsight-0.1         0.0      # .2.0
CATEGORIES=		net

HOMEPAGE=		http://farsight.freedesktop.org/

# LGPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=		${HOMEPAGE}/releases/farsight/

WANTLIB=		glib-2.0 gmodule-2.0 gobject-2.0 gthread-2.0 m pcre z

LIB_DEPENDS=		gstreamer-0.10::multimedia/gstreamer-0.10/core \
			xml2::textproc/libxml

MODULES=		devel/gettext

USE_GMAKE=		Yes
USE_LIBTOOL=		Yes
CONFIGURE_STYLE=	gnu
CONFIGURE_ARGS+=	--disable-check \
			--disable-clinkc \
			--disable-jingle-p2p

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/farsight
	${INSTALL_DATA} ${WRKSRC}/{gstcodecs,gstelements}.conf \
		${PREFIX}/share/farsight

.include <bsd.port.mk>
