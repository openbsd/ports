# $OpenBSD: Makefile,v 1.29 2008/09/29 19:02:22 sturm Exp $

COMMENT=		GNOME component and compound document system

GNOME_PROJECT=		libbonobo
GNOME_VERSION=		2.20.3
SHARED_LIBS +=	bonobo-activation    6.0      # .4.0
SHARED_LIBS +=	bonobo-2             2.0      # .0.0
CATEGORIES=		devel
PKGNAME=		${DISTNAME}p4

# GPL/LGPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

WANTLIB=		c m pcre pthread z

MODULES=		devel/gettext \
			x11/gnome

BUILD_DEPENDS=		::devel/popt
LIB_DEPENDS=		ORBit-2.>=2,ORBitCosNaming-2.>=2::devel/ORBit2 \
			glib-2.0.>=1200.0,gmodule-2.0.>=1200.0,gobject-2.0.>=1200.0,gthread-2.0.>=1200.0::devel/glib2 \
			xml2.>=9::textproc/libxml			
# popt usage is deprecated in gnome, but the header file is still included
# from some libbonobo header and might still be used inside libbonobo
RUN_DEPENDS=		::devel/popt

CONFIGURE_ARGS+=	${CONFIGURE_SHARED}
CONFIGURE_ENV=		CPPFLAGS="-I${LOCALBASE}/include" \
			LDFLAGS="-L${LOCALBASE}/lib"

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/libbonobo; \
	cp -Rp ${WRKINST}/${SYSCONFDIR}/gnome/* ${PREFIX}/share/examples/libbonobo/

.include <bsd.port.mk>

CONFIGURE_ARGS+=	--sysconfdir="${SYSCONFDIR}/gnome"
