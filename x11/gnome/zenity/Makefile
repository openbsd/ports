# $OpenBSD: Makefile,v 1.1.1.1 2003/10/08 01:25:43 marcm Exp $

COMMENT=		"dialogs for Gnome"

DISTNAME=		zenity-1.6
CATEGORIES=		x11/gnome

HOMEPAGE=		http://www.gnome.org/

MAINTAINER=		Marc Balmer <marc@msys.ch>

# LGPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=		${MASTER_SITE_GNOME:=sources/zenity/1.6/}
EXTRACT_SUFX=		.tar.bz2

BUILD_DEPENDS=		:pkgconfig-*:devel/pkgconfig \
			:intltool-*:textproc/intltool \
			:scrollkeeper-*:textproc/scrollkeeper

LIB_DEPENDS=		gconf-2::devel/gconf2 \
			gnomecanvas-2::x11/gnome/libgnomecanvas \

USE_GMAKE=		Yes
CONFIGURE_STYLE=	gnu
CONFIGURE_ENV=		CPPFLAGS="-I${LOCALBASE}/include" \
			LDFLAGS="-L${LOCALBASE}/lib"

post-patch:
	@ln -s /usr/bin/true ${WRKDIR}/bin/scrollkeeper-update

.include <bsd.port.mk>
