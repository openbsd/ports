# $OpenBSD: Makefile,v 1.20 2007/11/10 14:51:30 jasper Exp $

COMMENT=		libraries for the GNOME project

GNOME_PROJECT=		libgnome
GNOME_VERSION=		2.20.1.1
SHARED_LIBS +=	gnome-2              1900.0   # .1999.2

# LGPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=	${MASTER_SITE_GNOME:=sources/${GNOME_PROJECT}/2.20/}

WANTLIB=	ORBit-2 ORBitCosNaming-2 c crypto dbus-1 dbus-glib-1 \
		gconf-2 glib-2.0 gmodule-2.0 gobject-2.0 gthread-2.0 \
		m pcre pthread ssl util xml2 z

MODULES=		devel/gettext \
			x11/gnome

LIB_DEPENDS=		esd.>=2.26::audio/esound \
			audiofile.>=0::devel/libaudiofile \
			bonobo-2.>=1,bonobo-activation.>=5::x11/gnome/libbonobo \
			gnomevfs-2.>=1799::x11/gnome/vfs2 \
			popt::devel/popt

CONFIGURE_ARGS+=	${CONFIGURE_SHARED} \
			--with-gconf-schema-file-dir=${LOCALBASE}/share/schemas/libgnome \
			--disable-schemas-install
CONFIGURE_ENV=		CPPFLAGS="-I${LOCALBASE}/include" \
			LDFLAGS="-L${LOCALBASE}/lib"

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/libgnome
	cp -Rp ${WRKINST}/${SYSCONFDIR}/gnome/* ${PREFIX}/share/examples/libgnome/

.include <bsd.port.mk>

CONFIGURE_ARGS+=	--sysconfdir="${SYSCONFDIR}/gnome"
