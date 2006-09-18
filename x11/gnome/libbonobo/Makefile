# $OpenBSD: Makefile,v 1.15 2006/09/18 09:40:31 espie Exp $

COMMENT=		"GNOME component and compound document system" 

DISTNAME=		libbonobo-2.10.1
PKGNAME=		${DISTNAME}p0
SHARED_LIBS=		bonobo-2		0.0 \
			bonobo-activation	4.0
CATEGORIES=		devel

HOMEPAGE=		http://www.gnome.org/

# LGPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
WANTLIB=		c glib-2.0.0.0 gmodule-2.0.0.0 gobject-2.0.0.0 \
			gthread-2.0.0.0 m popt pthread z

MASTER_SITES=		${MASTER_SITE_GNOME:=sources/libbonobo/2.10/}
EXTRACT_SUFX=		.tar.bz2

MODULES=		devel/gettext

BUILD_DEPENDS=		:pkgconfig-*:devel/pkgconfig \
			:p5-XML-Parser-*:textproc/p5-XML-Parser
LIB_DEPENDS=		ORBit-2,ORBitCosNaming-2::devel/ORBit2 \
			xml2.>=6::textproc/libxml

USE_GMAKE=		Yes
USE_LIBTOOL=		Yes
CONFIGURE_STYLE=	gnu old
CONFIGURE_ARGS+=	${CONFIGURE_SHARED}
CONFIGURE_ARGS+=	--sysconfdir="${SYSCONFDIR}/gnome"
CONFIGURE_ARGS+=	--disable-gtk-doc
CONFIGURE_ENV=		CPPFLAGS="-I${LOCALBASE}/include" \
			LDFLAGS="-L${LOCALBASE}/lib"

post-install:
	@${INSTALL_DATA_DIR} ${PREFIX}/share/examples/libbonobo; \
	cp -Rp ${WRKINST}/${SYSCONFDIR}/gnome/* ${PREFIX}/share/examples/libbonobo/

.include <bsd.port.mk>
