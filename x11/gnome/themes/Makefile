# $OpenBSD: Makefile,v 1.1.1.1 2003/06/12 20:18:43 marcm Exp $

COMMENT=		"themes collection for GNOME"

DISTNAME=		gnome-themes-2.2.1
CATEGORIES=		x11 x11/gnome

HOMEPAGE=		http://www.gnome.org
MAINTAINER=		Marc Matteo <marcm@openbsd.org>

MASTER_SITES=		${MASTER_SITE_GNOME:=sources/gnome-themes/2.2/}
EXTRACT_SUFX=           .tar.bz2

# LGPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MODULES=		gettext

BUILD_DEPENDS=		:intltool->=0.23:textproc/intltool \
			${RUN_DEPENDS}
RUN_DEPENDS=		:gtk-engines2->=2.2.0:x11/gtk-engines2 \
			:gtk-thinice-engine-*:x11/gtk-thinice-engine
LIB_DEPENDS= 		gnomeui-2.0::x11/gnome/libgnomeui

USE_X11=		Yes
CONFIGURE_STYLE= 	gnu
CONFIGURE_ENV=		CPPFLAGS="-I${LOCALBASE}/include" \
			LDFLAGS="-L${LOCALBASE}/lib"

.include <bsd.port.mk>
