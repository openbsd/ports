# $OpenBSD: Makefile,v 1.15 2002/09/20 08:15:15 nino Exp $

COMMENT=		"configuration database system written for GNOME"

DISTNAME=		GConf-1.0.9
PKGNAME=		${DISTNAME:L}
CATEGORIES=		devel x11/gnome

HOMEPAGE=		http://www.gnome.org/projects/gconf/
MAINTAINER=		Nils Nordman <nino@openbsd.org>

MASTER_SITES=		${MASTER_SITE_GNOME:=sources/GConf/1.0/}
EXTRACT_SUFX=           .tar.bz2

LIB_DEPENDS=		oaf.::x11/gnome/oaf \
			xml.9::textproc/libxml1 \
			gnome.36::x11/gnome/libs

# GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

DEFAULT_GCONF_SOURCE=	xml::/var/db/gconf/gconf.xml.defaults

SEPARATE_BUILD=		concurrent
CONFIGURE_STYLE= 	autoconf
CONFIGURE_ARGS+= 	${CONFIGURE_SHARED}
CONFIGURE_ARGS+=	--enable-gconf-source=${DEFAULT_GCONF_SOURCE}
CONFIGURE_ARGS+=	--disable-guile
CONFIGURE_ARGS+=	--disable-db3
CONFIGURE_ENV=  	CPPFLAGS="-I${LOCALBASE}/include" \
			LDFLAGS="-L${WRKBUILD}/gconf/.libs -L${LOCALBASE}/lib" \
			XML_CONFIG="${LOCALBASE}/bin/xml-config"

post-install:
	@${INSTALL_DATA_DIR} ${PREFIX}/share/examples/gconf; \
	cp -Rp ${WRKINST}/${SYSCONFDIR}/* ${PREFIX}/share/examples/gconf;

.include <bsd.port.mk>
