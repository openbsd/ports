# $OpenBSD: Makefile,v 1.22 2005/12/03 00:26:40 brad Exp $

COMMENT=		"integrated email and PIM software for GNOME"

PARENT_VERS=		2.2
VERSION=		${PARENT_VERS}.3
DISTNAME=		evolution-${VERSION}
CATEGORIES=    		mail x11/gnome

HOMEPAGE=		http://www.gnome.org/projects/evolution/

# GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
WANTLIB=		ICE SM X11 Xft Xrender \
			c crypto fontconfig freetype pthread m ssl z \
			ORBit-2 ORBitCosNaming-2 art_lgpl_2.5 atk-1.0.0.0 \
			audiofile bonobo-2 bonobo-activation.4.0 bonoboui-2 \
			esd.2 gailutil.17 gconf-2 glade-2.0.0.0 \
			glib-2.0.0.0 gmodule-2.0.0.0 gobject-2.0.0.0 gthread-2.0.0.0 \
			pango-1.0.0.0 pangoft2-1.0.0.0 pangox-1.0.0.0 pangoxft-1.0.0.0 \
			gdk-x11-2.0.0.0 gdk_pixbuf-2.0.0.0 gtk-x11-2.0.0.0 \
			gnome-2 gnome-keyring gnomecanvas-2 gnomeui-2 gnomevfs-2 \
			gnomeprint-2-2 gnomeprintui-2-2 \
			jpeg popt soup-2.2.7.0 xml2

MASTER_SITES=		${MASTER_SITE_GNOME:S@$@sources/evolution/${PARENT_VERS}/@}
EXTRACT_SUFX=           .tar.bz2

MODULES=		devel/gettext

# XXX: Needs gal2-2.4.2, gtkhtml3-3.6.1, eds-1.2.2
BUILD_DEPENDS=		:bison-*:devel/bison \
			:scrollkeeper-*:textproc/scrollkeeper \
			:p5-XML-Parser-*:textproc/p5-XML-Parser
RUN_DEPENDS=		:scrollkeeper-*:textproc/scrollkeeper
LIB_DEPENDS=		camel-1.2.0.0,camel-provider-1.2.4.1,ebook-1.2.4.1,ecal-1.2.2.1,edataserver-1.2.4.0,edataserverui-1.2.5.1,egroupwise-1.2.5.0::databases/evolution-data-server \
			gal-2.4.0.0,gal-a11y-2.4.0.0::devel/gal2 \
			gtkhtml-3.6.18.2::www/gtkhtml3 \
			lber.7,ldap.7::databases/openldap \
			gstreamer-0.8.5.0::devel/gstreamer

USE_X11=		Yes
USE_GMAKE=		Yes
USE_LIBTOOL=		Yes
YACC=			bison
CONFIGURE_STYLE=	gnu
CONFIGURE_ARGS+=	--with-gconf-schema-file-dir=${LOCALBASE}/share/schemas/evolution
CONFIGURE_ARGS+=	--enable-ipv6
CONFIGURE_ARGS+=	--disable-pilot-conduits
CONFIGURE_ARGS+=	--disable-gtk-doc
CONFIGURE_ARGS+=        --enable-default-binary
CONFIGURE_ARGS+=	--with-openldap=${LOCALBASE}
CONFIGURE_ARGS+=	--with-sub-version=" OpenBSD/Ports"
CONFIGURE_ARGS+=	--with-krb5=/usr
CONFIGURE_ARGS+=	--with-krb5-includes=/usr/include/kerberosV

CONFIGURE_ENV=		CPPFLAGS="-I${LOCALBASE}/include" \
			LDFLAGS="-L${LOCALBASE}/lib -Wl,-rpath,${LOCALBASE}/lib/evolution/${PARENT_VERS}:${LOCALBASE}/lib -Z"
SUBST_VARS=		PARENT_VERS

FLAVORS=		ssl
FLAVOR?=

.if ${FLAVOR:L:Mssl}
BUILD_DEPENDS=		::www/mozilla,gtk2,-devel
CONFIGURE_ARGS+=	--with-nspr-libs=${LOCALBASE}/mozilla/lib
CONFIGURE_ARGS+=	--with-nspr-includes=${LOCALBASE}/mozilla/include/nspr
CONFIGURE_ARGS+=	--with-nss-libs=${LOCALBASE}/mozilla/lib
CONFIGURE_ARGS+=	--with-nss-includes=${LOCALBASE}/mozilla/include/nss
CONFIGURE_ARGS+=	--enable-nss=static
CONFIGURE_ARGS+=	--enable-smime=yes
.else
CONFIGURE_ARGS+=	--disable-nss
.endif

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
	find ${PREFIX}/share/evolution/${PARENT_VERS}/default -perm 444 -exec chmod 644 {} \;

.include <bsd.port.mk>
