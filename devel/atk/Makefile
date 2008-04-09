# $OpenBSD: Makefile,v 1.25 2008/04/09 13:12:21 jasper Exp $

COMMENT=		accessibility toolkit used by gtk+

DISTNAME=		atk-1.22.0
SHARED_LIBS +=	atk-1.0             2200.0   # .2209.1

CATEGORIES=		devel

HOMEPAGE=		http://www.gtk.org/

# LGPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=		${MASTER_SITE_GNOME:=sources/atk/1.22/}
EXTRACT_SUFX=           .tar.bz2

MODULES=		devel/gettext
WANTLIB=		pcre
LIB_DEPENDS=		glib-2.0.>=1600.0,gmodule-2.0.>=1600.0,gobject-2.0.>=1600.0::devel/glib2

USE_GMAKE=		Yes
USE_LIBTOOL=		Yes
CONFIGURE_STYLE=	gnu
CONFIGURE_ARGS+=	${CONFIGURE_SHARED}

.include <bsd.port.mk>
