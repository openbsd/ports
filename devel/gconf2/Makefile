# $OpenBSD: Makefile,v 1.1.1.1 2003/01/31 18:26:49 todd Exp $

COMMENT=		"configuration database system for GNOME"

VERSION=		1.2.1
DISTNAME=		GConf-${VERSION}
PKGNAME=		gconf2-${VERSION}
CATEGORIES=		devel

HOMEPAGE=		http://www.gnome.org/projects/gconf/

MAINTAINER=		Marc Matteo <marcm@openbsd.org>

MASTER_SITES=		${MASTER_SITE_GNOME:=sources/GConf/1.2/}
EXTRACT_SUFX=           .tar.bz2

MODULES=		gettext

BUILD_DEPENDS=		:pkgconfig->=0.12.0p1:devel/pkgconfig
LIB_DEPENDS=		ORBit-2::devel/ORBit2 \
			gdk-x11-2.0.0.0,gdk_pixbuf-2.0.0.0,gtk-x11-2.0.0.0::x11/gtk+2 \
			gthread-2.0.0.7::devel/glib2 \
			xml2.6::textproc/libxml

# GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

SEPARATE_BUILD=		concurrent

DEFAULT_GCONF_SOURCE=	xml::/var/db/gconf/gconf.xml.defaults

USE_X11=		Yes
CONFIGURE_STYLE= 	gnu
CONFIGURE_ARGS+= 	${CONFIGURE_SHARED}
CONFIGURE_ARGS+=	--disable-gtk-conf
CONFIGURE_ARGS+=	--enable-gconf-source=${DEFAULT_GCONF_SOURCE}
CONFIGURE_ENV=  	CPPFLAGS="-I${LOCALBASE}/include" \
			LDFLAGS="-L${LOCALBASE}/lib"

post-install:
	@${INSTALL_DATA_DIR} ${PREFIX}/share/examples/gconf2; \
	cp -Rp ${WRKINST}/${SYSCONFDIR}/* ${PREFIX}/share/examples/gconf2; \

.include <bsd.port.mk>
