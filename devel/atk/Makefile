# $OpenBSD: Makefile,v 1.24 2007/10/31 21:54:11 winiger Exp $

COMMENT=		accessibility toolkit used by gtk+

DISTNAME=		atk-1.20.0
PKGNAME=		${DISTNAME}p0
SHARED_LIBS +=	atk-1.0             2009.1   # .2009.1

CATEGORIES=		devel

HOMEPAGE=		http://www.gtk.org/

# LGPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=		${MASTER_SITE_GNOME:=sources/atk/1.20/}
EXTRACT_SUFX=           .tar.bz2

MODULES=		devel/gettext
WANTLIB=		pcre
LIB_DEPENDS=		glib-2.0.>=1200.0,gmodule-2.0.>=1200.0,gobject-2.0.>=1200.0::devel/glib2

USE_GMAKE=		Yes
USE_LIBTOOL=		Yes
CONFIGURE_STYLE=	gnu
CONFIGURE_ARGS+=	${CONFIGURE_SHARED}

.include <bsd.port.mk>
