# $OpenBSD: Makefile,v 1.19 2005/01/27 09:56:40 alek Exp $

COMMENT=		"configuration database system written for GNOME"

DISTNAME=		GConf-1.0.9
PKGNAME=		${DISTNAME:L}p0
CATEGORIES=		devel x11/gnome

HOMEPAGE=		http://www.gnome.org/projects/gconf/
MAINTAINER=		Marc Matteo <marcm@openbsd.org>

MASTER_SITES=		${MASTER_SITE_GNOME:=sources/GConf/1.0/}
EXTRACT_SUFX=           .tar.bz2

MODULES=		devel/gettext
LIB_DEPENDS=		oaf.::x11/gnome/oaf \
			xml.9::textproc/libxml1 \
			gtk.1,gdk.1::x11/gtk+

# GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
WANTLIB=		IIOP ORBit ORBitCosNaming ORBitutil \
			X11 Xext Xi c gdk glib gmodule gtk m \
			popt wrap z

DEFAULT_GCONF_SOURCE=	xml::/var/db/gconf/gconf.xml.defaults

SEPARATE_BUILD=		concurrent
CONFIGURE_STYLE= 	autoconf
CONFIGURE_ARGS+= 	${CONFIGURE_SHARED}
CONFIGURE_ARGS+=	--enable-gconf-source=${DEFAULT_GCONF_SOURCE}
CONFIGURE_ARGS+=	--disable-guile
CONFIGURE_ARGS+=	--disable-db3
CONFIGURE_ARGS+=	--disable-oaftest
CONFIGURE_ENV=  	CPPFLAGS="-I${LOCALBASE}/include" \
			LDFLAGS="-L${WRKBUILD}/gconf/.libs -L${LOCALBASE}/lib" \
			XML_CONFIG="${LOCALBASE}/bin/xml-config"

post-install:
	@${INSTALL_DATA_DIR} ${PREFIX}/share/examples/gconf; \
	cp -Rp ${WRKINST}/${SYSCONFDIR}/* ${PREFIX}/share/examples/gconf;

.include <bsd.port.mk>
