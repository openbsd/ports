# $OpenBSD: Makefile,v 1.6 2004/08/10 12:42:22 xsa Exp $

COMMENT=		"configuration database system for GNOME"

VERSION=		2.6.2
DISTNAME=		GConf-${VERSION}
PKGNAME=		gconf2-${VERSION}
CATEGORIES=		devel

HOMEPAGE=		http://www.gnome.org/projects/gconf/

MAINTAINER=		Marc Matteo <marcm@openbsd.org>

MASTER_SITES=		${MASTER_SITE_GNOME:=sources/GConf/2.6/}
EXTRACT_SUFX=           .tar.bz2

MODULES=		devel/gettext

BUILD_DEPENDS=		:pkgconfig-*:devel/pkgconfig
LIB_DEPENDS=		ORBit-2::devel/ORBit2 \
			gdk-x11-2.0.0.0,gdk_pixbuf-2.0.0.0,gtk-x11-2.0.0.0::x11/gtk+2 \
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
