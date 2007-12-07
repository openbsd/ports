# $OpenBSD: Makefile,v 1.3 2007/12/07 22:04:25 martynas Exp $

COMMENT=		GTK+ Object Builder
DISTNAME=		gob2-2.0.15
CATEGORIES=		x11 devel

HOMEPAGE=		http://www.gnome.org/	

# GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
WANTLIB=		c m

LIB_DEPENDS=		glib-2.0.>=0::devel/glib2	

MASTER_SITES=		${MASTER_SITE_GNOME:=sources/gob2/2.0/}	
EXTRACT_SUFX=		.tar.bz2

MODULES=		devel/gettext

CONFIGURE_STYLE=	gnu
CONFIGURE_ENV+=		CPPFLAGS="-I${LOCALBASE}/include" \
			LDFLAGS="-L${LOCALBASE}/lib"

.include <bsd.port.mk>
