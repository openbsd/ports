# $OpenBSD: Makefile,v 1.7 2009/02/11 15:33:52 jasper Exp $

BROKEN= 		need fixes to work on *BSD

COMMENT=		GNOME library for CUPS interaction

GNOME_PROJECT=		libgnomecups
GNOME_VERSION=		0.2.3
SHARED_LIBS=		gnomecups-1.0	1.0
CATEGORIES=		devel
PKGNAME=		${DISTNAME}p1

HOMEPAGE=		http://www.gnome.org/projects/gnome-print/

# LGPL/GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
WANTLIB=		crypto m pcre pthread ssl z

MODULES=		devel/gettext \
			x11/gnome

LIB_DEPENDS=		glib-2.0,gobject-2.0,gthread-2.0::devel/glib2 \
    			cups::print/cups

CONFIGURE_ARGS+=	${CONFIGURE_SHARED}
CONFIGURE_ENV=		CPPFLAGS="-I${LOCALBASE}/include" \
			LDFLAGS="-L${LOCALBASE}/lib"

.include <bsd.port.mk>
