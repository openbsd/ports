# $OpenBSD: Makefile,v 1.6 2003/12/01 04:13:06 marcm Exp $

COMMENT=		"GNOME session"

DISTNAME=		gnome-session-2.4.1
CATEGORIES=		x11 x11/gnome

HOMEPAGE=		http://www.gnome.org
MAINTAINER=		Marc Matteo <marcm@openbsd.org>

MASTER_SITES=		${MASTER_SITE_GNOME:=sources/gnome-session/2.4/}
EXTRACT_SUFX=           .tar.bz2

# LGPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MODULES=		gettext

BUILD_DEPENDS= 		:pkgconfig->=0.12.0p1:devel/pkgconfig \
			:scrollkeeper->=0.3.11:textproc/scrollkeeper
LIB_DEPENDS= 		gnomeui-2.0::x11/gnome/libgnomeui

# Here we hang all the additional ports that will make up a satisfying
# Gnome2 user experience :)
RUN_DEPENDS+=		:gnome-applets2-*:x11/gnome/applets2
RUN_DEPENDS+=		:gnome-terminal-*:x11/gnome/terminal
RUN_DEPENDS+=		:gnome-themes-*:x11/gnome/themes
#RUN_DEPENDS+=		:yelp-*:x11/gnome/yelp
RUN_DEPENDS+=		:xscreensaver-*:x11/xscreensaver,gtk2

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
