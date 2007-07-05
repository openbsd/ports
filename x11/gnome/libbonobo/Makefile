# $OpenBSD: Makefile,v 1.20 2007/07/05 22:50:10 jasper Exp $

COMMENT=		GNOME component and compound document system

GNOME_PROJECT=		libbonobo
GNOME_VERSION=		2.18.0
SHARED_LIBS +=	bonobo-activation    5.0      # .4.0
SHARED_LIBS +=	bonobo-2             1.0      # .0.0
CATEGORIES=		devel

# LGPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
WANTLIB=                c glib-2.0 gmodule-2.0 gobject-2.0 \
                        gthread-2.0 m pthread z

MODULES=		devel/gettext \
			x11/gnome

BUILD_DEPENDS=		::devel/popt
LIB_DEPENDS=		ORBit-2.>=2,ORBitCosNaming-2.>=2::devel/ORBit2 \
			glib-2.0.>=1200.0,gmodule-2.0.>=1200.0,gobject-2.0.>=1200.0,gthread-2.0.>=1200.0::devel/glib2 \
			xml2.>=9::textproc/libxml			

CONFIGURE_ARGS+=	${CONFIGURE_SHARED}
CONFIGURE_ENV=		CPPFLAGS="-I${LOCALBASE}/include" \
			LDFLAGS="-L${LOCALBASE}/lib"

post-install:
	@${INSTALL_DATA_DIR} ${PREFIX}/share/examples/libbonobo; \
	cp -Rp ${WRKINST}/${SYSCONFDIR}/gnome/* ${PREFIX}/share/examples/libbonobo/

.include <bsd.port.mk>

CONFIGURE_ARGS+=	--sysconfdir="${SYSCONFDIR}/gnome"
