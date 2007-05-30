# $OpenBSD: Makefile,v 1.18 2007/05/30 09:56:30 jasper Exp $

COMMENT=		"libraries for the GNOME project"

DISTNAME=		libgnome-2.18.0
SHARED_LIBS +=	gnome-2        1800.0         # .1800.0
CATEGORIES=		x11/gnome

# LGPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
WANTLIB=	ORBit-2 ORBitCosNaming-2 c crypto dbus-1 dbus-glib-1 \
		gconf-2 glib-2.0 gmodule-2.0 gobject-2.0 gthread-2.0 \
		m pthread ssl util xml2 z

MASTER_SITES=		${MASTER_SITE_GNOME:=sources/libgnome/2.18/}
EXTRACT_SUFX=		.tar.bz2

MODULES=		devel/gettext

BUILD_DEPENDS=		:p5-XML-Parser-*:textproc/p5-XML-Parser
LIB_DEPENDS=		esd.>=2.26::audio/esound \
			audiofile.>=0::devel/libaudiofile \
			bonobo-2.>=1,bonobo-activation.>=5::x11/gnome/libbonobo \
			gnomevfs-2.>=1799::x11/gnome/vfs2 \
			popt::devel/popt

USE_GMAKE=		Yes
USE_LIBTOOL=		Yes
CONFIGURE_STYLE=	gnu
CONFIGURE_ARGS+=	${CONFIGURE_SHARED} \
			--with-gconf-schema-file-dir=${LOCALBASE}/share/schemas/libgnome \
			--disable-schemas-install
CONFIGURE_ENV=		CPPFLAGS="-I${LOCALBASE}/include" \
			LDFLAGS="-L${LOCALBASE}/lib"

post-install:
	@${INSTALL_DATA_DIR} ${PREFIX}/share/examples/libgnome; \
	cp -Rp ${WRKINST}/${SYSCONFDIR}/gnome/* ${PREFIX}/share/examples/libgnome/

.include <bsd.port.mk>

CONFIGURE_ARGS+=	--sysconfdir="${SYSCONFDIR}/gnome"
