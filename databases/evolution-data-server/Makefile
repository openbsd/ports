# $OpenBSD: Makefile,v 1.8 2005/12/26 19:15:21 sturm Exp $

COMMENT=		"data backends for the Evolution mail/PIM suite"

R=			1.2
DISTNAME=		evolution-data-server-$R.3
CATEGORIES=		databases
SHARED_LIBS=		camel-$R	0.0 \
			camel-provider-$R 4.3 \
			ebook-$R	4.2 \
			ecal-$R		3.1 \
			edata-book-$R	3.1 \
			edata-cal-$R	3.2 \
			edataserver-$R	4.1 \
			edataserverui-$R 5.3 \
			egroupwise-$R	5.1
MODGNU_SHARED_LIBS=	camel-$R	'' \
			camel-provider-$R '' \
			ebook-$R	'' \
			ecal-$R		'' \
			edata-book-$R	'' \
			edata-cal-$R	'' \
			edataserver-$R	'' \
			edataserverui-$R '' \
			egroupwise-$R	''

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
