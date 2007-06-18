# $OpenBSD: Makefile,v 1.33 2007/06/18 17:39:18 martin Exp $

COMMENT=		"integrated email and PIM software for GNOME"

R=			2.10
DISTNAME=		evolution-${R}.1
CATEGORIES=    		mail x11/gnome

HOMEPAGE=		http://www.gnome.org/projects/evolution/

SO_VERSION=		1.0
.for _lib in eabutil econduit econtacteditor econtactlisteditor efilterbar \
emiscwidgets eshell essmime etable etext etimezonedialog eutil evolution-a11y \
evolution-addressbook-a11y evolution-addressbook-importers \
evolution-calendar-a11y evolution-calendar-importers evolution-mail-importers \
evolution-smime evolution-widgets-a11y filter menus
SHARED_LIBS+=	${_lib}	${SO_VERSION}
.endfor

# GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
WANTLIB=	ICE ORBit-2 ORBitCosNaming-2 SM X11 Xau Xcursor Xdmcp \
		Xext Xfixes Xi Xinerama Xrandr Xrender art_lgpl_2 asn1 \
		atk-1.0 audiofile bonobo-2 bonobo-activation bonoboui-2 \
		c cairo com_err crypto dbus-1 dbus-glib-1 esd expat \
		fontconfig freetype gailutil gconf-2 gdk-x11-2.0 gdk_pixbuf-2.0 \
		glade-2.0 glib-2.0 glitz gmodule-2.0 gnome-2 gnome-keyring \
		gnomecanvas-2 gnomeprint-2-2 gnomeui-2 \
		gnomevfs-2 gobject-2.0 gssapi gthread-2.0 gtk-x11-2.0 \
		jpeg krb5 m nspr4 pango-1.0 pangocairo-1.0 pangoft2-1.0 plc4 \
		plds4 png popt pthread sasl2 soup-2.2 ssl util xml2 z

MASTER_SITES=		${MASTER_SITE_GNOME:=sources/evolution/${R}/}
EXTRACT_SUFX=           .tar.bz2

MODULES=		devel/gettext

BUILD_DEPENDS=		:bison-*:devel/bison \
			:scrollkeeper-*:textproc/scrollkeeper \
			:gnome-doc-utils-*:x11/gnome/doc-utils: \
			:p5-XML-Parser-*:textproc/p5-XML-Parser
RUN_DEPENDS=		:scrollkeeper-*:textproc/scrollkeeper \
			:desktop-file-utils-*:devel/desktop-file-utils \
			:hicolor-icon-theme-*:x11/hicolor-icon-theme \
			:control-center2-*:x11/gnome/controlcenter2:
LIB_DEPENDS=		camel-1.2,camel-provider-1.2.>=4.1,ebook-1.2.>=4.1,ecal-1.2.>=2.1,edataserver-1.2.>=4.0,edataserverui-1.2.>=5.1,egroupwise-1.2.>=5.0,exchange-storage-1.2.>=3.0::databases/evolution-data-server \
			gtkhtml-3.14.>=0.0::www/gtkhtml3 \
			lber.>=7,ldap.>=7::databases/openldap \
			gstreamer-0.8.>=5.0:gstreamer-0.8.*:devel/gstreamer \
			gnomeprintui-2-2::x11/gnome/libgnomeprintui \
			nss3.>=19,smime3.>=19,softokn3.>=19,ssl3.>=19:nss->=3.11.4p1:security/nss

USE_X11=		Yes
USE_GMAKE=		Yes
USE_LIBTOOL=		Yes
YACC=			bison
CONFIGURE_STYLE=	gnu
CONFIGURE_ARGS+=	${CONFIGURE_SHARED} \
			--with-gconf-schema-file-dir=${LOCALBASE}/share/schemas/evolution \
			--enable-ipv6 \
			--enable-nss=yes \
			--enable-smime=yes \
			--enable-default-binary \
			--disable-pilot-conduits \
			--disable-gtk-doc \
			--with-openldap=${LOCALBASE} \
			--with-sub-version=" OpenBSD/Ports" \
			--with-krb5=/usr \
			--with-krb5-includes=/usr/include/kerberosV

CONFIGURE_ENV=		CPPFLAGS="-I${LOCALBASE}/include" \
			LDFLAGS="-L${LOCALBASE}/lib -Wl,-rpath,${LOCALBASE}/lib/evolution/${R}:${LOCALBASE}/lib -Z"

SUBST_VARS=		${R}

post-patch:
	@ln -s /usr/bin/true ${WRKDIR}/bin/scrollkeeper-update

pre-configure:
	@if pkg dependencies check evolution-\*; then \
		if pkg dependencies check ${DISTNAME}; then \
			:; \
		else \
			echo 1>&2 "+-------------------"; \
			echo 1>&2 "| Error: you must remove your existing evolution installation"; \
			echo 1>&2 "| before compiling this version.  To fully remove run"; \
			echo 1>&2 "| these commands as user root"; \
			echo 1>&2 "|"; \
			echo 1>&2 "|	  pkg_delete -f `pkg_info -e 'evolution-*'`"; \
			echo 1>&2 "|"; \
			echo 1>&2 "+-------------------"; \
			exit 1; \
		fi; \
	fi

post-install:
	find ${PREFIX}/share/evolution/${R}/default -perm 444 -exec chmod 644 {} \;

.include <bsd.port.mk>
