# $OpenBSD: Makefile,v 1.27 2009/10/09 22:17:28 jasper Exp $

COMMENT=		accessibility toolkit used by gtk+

DISTNAME=		atk-1.28.0
SHARED_LIBS +=	atk-1.0             2800.0   # .2809.1

CATEGORIES=		devel

HOMEPAGE=		http://www.gtk.org/

# LGPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=		${MASTER_SITE_GNOME:=sources/atk/1.28/}
EXTRACT_SUFX=           .tar.bz2

MODULES=		devel/gettext
WANTLIB=		pcre
LIB_DEPENDS=		glib-2.0.>=1600.0,gobject-2.0.>=1600.0::devel/glib2

USE_GMAKE=		Yes
USE_LIBTOOL=		Yes
CONFIGURE_STYLE=	gnu
CONFIGURE_ARGS+=	${CONFIGURE_SHARED}

.include <bsd.port.mk>
