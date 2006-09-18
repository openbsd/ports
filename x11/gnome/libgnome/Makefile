# $OpenBSD: Makefile,v 1.15 2006/09/18 12:19:40 espie Exp $

COMMENT=		"libraries for the GNOME project"

DISTNAME=		libgnome-2.10.0
PKGNAME=		${DISTNAME}p0
SHARED_LIBS=		gnome-2	1000.0
CATEGORIES=		x11/gnome

HOMEPAGE=		http://www.gnome.org/

# LGPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
WANTLIB=		ORBit-2 ORBitCosNaming-2 bonobo-2 bonobo-activation c \
			crypto gconf-2 glib-2.0 gmodule-2.0 \
			gobject-2.0 gthread-2.0 m popt pthread ssl \
			xml2 z

MASTER_SITES=		${MASTER_SITE_GNOME:=sources/libgnome/2.10/}
EXTRACT_SUFX=		.tar.bz2

MODULES=		devel/gettext

BUILD_DEPENDS=		:pkgconfig-*:devel/pkgconfig \
			:p5-XML-Parser-*:textproc/p5-XML-Parser
LIB_DEPENDS=		esd.>=2.26::audio/esound \
			gnomevfs-2::x11/gnome/vfs2 \
			audiofile::devel/libaudiofile

USE_GMAKE=		Yes
USE_LIBTOOL=		Yes
CONFIGURE_STYLE=	gnu old
CONFIGURE_ARGS+=	${CONFIGURE_SHARED}
CONFIGURE_ARGS+=	--sysconfdir="${SYSCONFDIR}/gnome"
CONFIGURE_ARGS+=	--disable-gtk-doc
CONFIGURE_ARGS+=	--with-gconf-schema-file-dir=${LOCALBASE}/share/schemas/libgnome
CONFIGURE_ENV=		CPPFLAGS="-I${LOCALBASE}/include" \
			LDFLAGS="-L${LOCALBASE}/lib"

post-install:
	@${INSTALL_DATA_DIR} ${PREFIX}/share/examples/libgnome; \
	cp -Rp ${WRKINST}/${SYSCONFDIR}/gnome/* ${PREFIX}/share/examples/libgnome/

.include <bsd.port.mk>
