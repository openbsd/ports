# $OpenBSD: Makefile,v 1.2 2003/02/18 07:14:46 marcm Exp $

COMMENT=		"GNOME session"

DISTNAME=		gnome-session-2.0.9
CATEGORIES=		x11 x11/gnome

HOMEPAGE=		http://www.gnome.org
MAINTAINER=		Marc Matteo <marcm@openbsd.org>

MASTER_SITES=		${MASTER_SITE_GNOME:=sources/gnome-session/2.0/}
EXTRACT_SUFX=           .tar.bz2

# LGPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MODULES=		gettext

BUILD_DEPENDS= 		:pkgconfig->=0.12.0p1:devel/pkgconfig \
			:scrollkeeper->=0.3.11:textproc/scrollkeeper
RUN_DEPENDS=		:esound-*:audio/esound \
			:gnome-applets2-*:x11/gnome/applets2 \
			:gnome-terminal-*:x11/gnome/terminal \
			:nautilus-*:x11/gnome/nautilus \
			:yelp-*:x11/gnome/yelp \
			:metacity-*:x11/gnome/metacity
LIB_DEPENDS= 		gnomeui-2.0::x11/gnome/libgnomeui

MAKE_ENV+=		GCONF_DISABLE_MAKEFILE_SCHEMA_INSTALL=1

SEPARATE_BUILD=		concurrent
USE_X11=		Yes
USE_GMAKE=		Yes
CONFIGURE_STYLE= 	gnu
CONFIGURE_ARGS+= 	--disable-rebuilds
CONFIGURE_ARGS+=	--with-gconf-schema-file-dir=${LOCALBASE}/share/schemas/gnome-session
CONFIGURE_ENV=		CPPFLAGS="-I${LOCALBASE}/include" \
			LDFLAGS="-L${LOCALBASE}/lib"

post-patch:
	@ln -s /usr/bin/true ${WRKDIR}/bin/scrollkeeper-update

.include <bsd.port.mk>
