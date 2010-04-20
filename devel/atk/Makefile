# $OpenBSD: Makefile,v 1.28 2010/04/20 10:19:46 ajacoutot Exp $

COMMENT=	accessibility toolkit used by gtk+

GNOME_PROJECT=	atk
GNOME_VERSION=	1.30.0

SHARED_LIBS +=	atk-1.0             2800.0   # .3009.1

CATEGORIES=	devel

HOMEPAGE=	http://www.gnome.org/

MAINTAINER=	Jasper Lievisse Adriaanse <jasper@openbsd.org>, \
		Antoine Jacoutot <ajacoutot@openbsd.org>

# LGPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

WANTLIB += pcre

MODULES=	devel/gettext \
		x11/gnome

LIB_DEPENDS=	glib-2.0.>=1600.0,gobject-2.0.>=1600.0::devel/glib2

USE_GMAKE=	Yes
USE_LIBTOOL=	Yes

CONFIGURE_STYLE= gnu
CONFIGURE_ARGS=	${CONFIGURE_SHARED}

.include <bsd.port.mk>
