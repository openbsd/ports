# $OpenBSD: Makefile,v 1.7 2005/09/08 04:46:25 marcm Exp $

COMMENT=		"data backends for the Evolution mail/PIM suite"

DISTNAME=		evolution-data-server-1.2.3
CATEGORIES=		databases

HOMEPAGE=		http://www.gnome.org

MASTER_SITES=		${MASTER_SITE_GNOME:=sources/evolution-data-server/1.2/}
EXTRACT_SUFX=           .tar.bz2

# GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
WANTLIB=		ORBit-2.0.0 ORBitCosNaming-2.0.0 \
			audiofile esd \
			bonobo-2.0.0 bonobo-activation \
			c crypto m pthread ssl z \
			gconf-2.0.0 glib-2.0.0.0 gmodule-2.0.0.0 \
			gnomevfs-2.0.0 gobject-2.0.0.0 gthread-2.0.0.0 \
			popt xml2

MODULES=		devel/gettext

BUILD_DEPENDS=		:bison-*:devel/bison \
			:pkgconfig-*:devel/pkgconfig \
			:p5-XML-Parser-*:textproc/p5-XML-Parser \
			:openldap-client-*:databases/openldap \
			:libgnomeui-*:x11/gnome/libgnomeui
LIB_DEPENDS= 		gnome-2::x11/gnome/libgnome \
			soup-2.2.7.0::devel/libsoup

USE_GMAKE=		Yes
USE_LIBTOOL=		Yes
YACC=			bison
CONFIGURE_STYLE= 	gnu
CONFIGURE_ARGS+= 	--disable-gtk-doc
CONFIGURE_ARGS+=	--with-gconf-schema-file-dir=${LOCALBASE}/share/schemas/evolution-data-server
CONFIGURE_ARGS+= 	--with-openldap=${LOCALBASE}
CONFIGURE_ENV=		CPPFLAGS="-I${LOCALBASE}/include" \
			LDFLAGS="-L${LOCALBASE}/lib"

.include <bsd.port.mk>
