# $OpenBSD: Makefile,v 1.4 2001/09/20 18:39:13 naddy Exp $

COMMENT=		"sample theme engines for GTK+ provided with GNOME"
V=			0.12
DISTNAME=		gtk-engines-${V}
CATEGORIES=		x11
NEED_VERSION=   	1.455
HOMEPAGE=		http://www.gnome.org
MAINTAINER=		Nils Nordman <nino@nforced.com>

MASTER_SITES=		${MASTER_SITE_GNOME}
MASTER_SITE_SUBDIR= 	stable/sources/gtk-engines

LIB_DEPENDS=		gdk_imlib.19::graphics/imlib

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

USE_X11=		Yes
CONFIGURE_STYLE= 	gnu
CONFIGURE_ARGS+= 	${CONFIGURE_SHARED}

.include <bsd.port.mk>
