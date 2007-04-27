# $OpenBSD: Makefile,v 1.18 2007/04/27 22:20:41 jasper Exp $

COMMENT=		"GNOME component and compound document system" 

DISTNAME=		libbonobo-2.18.0
SHARED_LIBS +=	bonobo-activation    5.0      # .4.0
SHARED_LIBS +=	bonobo-2             1.0      # .0.0
CATEGORIES=		devel

HOMEPAGE=		http://www.gnome.org/

# LGPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
WANTLIB=                c glib-2.0 gmodule-2.0 gobject-2.0 \
                        gthread-2.0 m pthread z

MASTER_SITES=		${MASTER_SITE_GNOME:=sources/libbonobo/2.18/}
EXTRACT_SUFX=		.tar.bz2

MODULES=		devel/gettext
BUILD_DEPENDS=		:p5-XML-Parser-*:textproc/p5-XML-Parser \
			::devel/popt
LIB_DEPENDS=		ORBit-2.>=2,ORBitCosNaming-2.>=2::devel/ORBit2 \
			glib-2.0.>=1200.0,gmodule-2.0.>=1200.0,gobject-2.0.>=1200.0,gthread-2.0.>=1200.0::devel/glib2 \
			xml2.>=9::textproc/libxml			

USE_GMAKE=		Yes
USE_LIBTOOL=		Yes
CONFIGURE_STYLE=	gnu
CONFIGURE_ARGS+=	${CONFIGURE_SHARED}
CONFIGURE_ENV=		CPPFLAGS="-I${LOCALBASE}/include" \
			LDFLAGS="-L${LOCALBASE}/lib"

post-install:
	@${INSTALL_DATA_DIR} ${PREFIX}/share/examples/libbonobo; \
	cp -Rp ${WRKINST}/${SYSCONFDIR}/gnome/* ${PREFIX}/share/examples/libbonobo/

.include <bsd.port.mk>

CONFIGURE_ARGS+=	--sysconfdir="${SYSCONFDIR}/gnome"
