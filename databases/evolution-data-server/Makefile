# $OpenBSD: Makefile,v 1.18 2007/07/11 22:13:05 martynas Exp $

SHARED_ONLY=		Yes

COMMENT=		"data backends for the Evolution mail/PIM suite"

R=			1.10
DISTNAME=		evolution-data-server-${R}.2
CATEGORIES=		databases
SHARED_LIBS +=	edataserver-1.2      9.0      # .9.0
SHARED_LIBS +=	egroupwise-1.2       13.0     # .13.0
SHARED_LIBS +=	exchange-storage-1.2 3.0      # .3.0
SHARED_LIBS +=	camel-1.2            10.0     # .10.0
SHARED_LIBS +=	camel-provider-1.2   10.0     # .10.0
SHARED_LIBS +=	ebook-1.2            9.1      # .9.1
SHARED_LIBS +=	edata-book-1.2       6.0      # .6.0
SHARED_LIBS +=	ecal-1.2             7.1      # .7.1
SHARED_LIBS +=	edata-cal-1.2        6.1      # .6.1
SHARED_LIBS +=	edataserverui-1.2    8.1      # .8.1

HOMEPAGE=		http://www.gnome.org

MASTER_SITES=		${MASTER_SITE_GNOME:=sources/evolution-data-server/${R}/}
EXTRACT_SUFX=           .tar.bz2

# GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
WANTLIB=	ORBit-2 ORBitCosNaming-2 X11 Xau Xcursor Xdmcp Xext \
		Xfixes Xi Xinerama Xrandr Xrender asn1 atk-1.0 audiofile \
		bonobo-2 bonobo-activation c cairo com_err crypto dbus-1 \
		dbus-glib-1 esd expat fontconfig freetype gconf-2 glib-2.0 \
		glitz gmodule-2.0 gnomevfs-2 gobject-2.0 gssapi gthread-2.0 \
		krb5 m nspr4 pango-1.0 pangocairo-1.0 pangoft2-1.0 plc4 plds4 \
		png popt pthread sasl2 ssl util xml2 z

MODULES=		devel/gettext \
			lang/python

BUILD_DEPENDS=		:bison-*:devel/bison \
			:p5-XML-Parser-*:textproc/p5-XML-Parser \
			:libgnomeui-*:x11/gnome/libgnomeui
LIB_DEPENDS= 		ldap,lber::databases/openldap \
			glade-2.0::devel/libglade2 \
			soup-2.2.>=7.0::devel/libsoup \
			gnome-2::x11/gnome/libgnome \
			gdk_pixbuf-2.0,gdk-x11-2.0,gtk-x11-2.0::x11/gtk+2 \
			nss3.>=19,smime3.>=19,softokn3.>=19,ssl3.>=19:nss->=3.11.4p1:security/nss

USE_X11=		Yes
USE_GMAKE=		Yes
USE_LIBTOOL=		Yes
YACC=			bison
CONFIGURE_STYLE= 	gnu
CONFIGURE_ARGS+=	${CONFIGURE_SHARED} \
			--with-gconf-schema-file-dir=${LOCALBASE}/share/schemas/evolution-data-server \
			--with-openldap=${LOCALBASE} \
			--enable-gnome-keyring=no \
			--enable-nss=yes \
			--enable-smime=yes
CONFIGURE_ENV=		CPPFLAGS="-I${LOCALBASE}/include" \
			LDFLAGS="-L${LOCALBASE}/lib"

SUBST_VARS=		R

post-extract:
	@perl -pi -e 's,/usr/bin/env python,${MODPY_BIN},' \
		${WRKSRC}/addressbook/libebook/gen-western-table.py

.include <bsd.port.mk>
